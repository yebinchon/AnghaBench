
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int dummy; } ;


 scalar_t__ mlx4_is_guest_proxy (struct mlx4_dev*,int,int) ;
 scalar_t__ mlx4_is_master (struct mlx4_dev*) ;
 scalar_t__ mlx4_is_qp_reserved (struct mlx4_dev*,int) ;

__attribute__((used)) static int valid_reserved(struct mlx4_dev *dev, int slave, int qpn)
{
 return mlx4_is_qp_reserved(dev, qpn) &&
  (mlx4_is_master(dev) || mlx4_is_guest_proxy(dev, slave, qpn));
}
