
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;


 scalar_t__ MLX5_QCOUNTER_SETS_NETDEV ;
 int max_qp_cnt ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int) ;

__attribute__((used)) static u32 mlx5_vport_max_q_counter_allocator(struct mlx5_core_dev *mdev,
           int client_id)
{
 switch (client_id) {
 case 128:
  return (MLX5_CAP_GEN(mdev, max_qp_cnt) -
   MLX5_QCOUNTER_SETS_NETDEV);
 case 129:
  return MLX5_QCOUNTER_SETS_NETDEV;
 default:
  mlx5_core_warn(mdev, "Unknown Client: %d\n", client_id);
  return 0;
 }
}
