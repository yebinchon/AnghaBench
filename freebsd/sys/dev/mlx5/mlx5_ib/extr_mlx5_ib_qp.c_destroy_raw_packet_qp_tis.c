
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_sq {int tisn; } ;
struct mlx5_ib_dev {int mdev; } ;


 int mlx5_core_destroy_tis (int ,int ) ;

__attribute__((used)) static void destroy_raw_packet_qp_tis(struct mlx5_ib_dev *dev,
          struct mlx5_ib_sq *sq)
{
 mlx5_core_destroy_tis(dev->mdev, sq->tisn);
}
