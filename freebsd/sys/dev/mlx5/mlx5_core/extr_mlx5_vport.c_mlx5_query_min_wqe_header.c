
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int EINVAL ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;


 int mlx5_query_hca_min_wqe_header (struct mlx5_core_dev*,int*) ;
 int mlx5_query_vport_min_wqe_header (struct mlx5_core_dev*,int*) ;
 int port_type ;

int mlx5_query_min_wqe_header(struct mlx5_core_dev *dev, int *min_header)
{
 switch (MLX5_CAP_GEN(dev, port_type)) {
 case 128:
  return mlx5_query_hca_min_wqe_header(dev, min_header);

 case 129:
  return mlx5_query_vport_min_wqe_header(dev, min_header);

 default:
  return -EINVAL;
 }
}
