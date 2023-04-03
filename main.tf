module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "ytest-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-0cc4c44c7457512ec"

  private_subnets = ["subnet-0aa1453eacebf3af5", "subnet-0f4de3665c9bcaa47"]
  public_subnets  = ["subnet-0a3d15da82a61ae70", "subnet-0412a7b8a91ef3c8b"]
}