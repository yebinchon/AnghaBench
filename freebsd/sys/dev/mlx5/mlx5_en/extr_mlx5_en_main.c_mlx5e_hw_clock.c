
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct mlx5e_priv {TYPE_1__* mdev; } ;
struct mlx5_init_seg {int internal_timer_h; int internal_timer_l; } ;
struct TYPE_2__ {struct mlx5_init_seg* iseg; } ;


 scalar_t__ ioread32be (int *) ;

__attribute__((used)) static uint64_t
mlx5e_hw_clock(struct mlx5e_priv *priv)
{
 struct mlx5_init_seg *iseg;
 uint32_t hw_h, hw_h1, hw_l;

 iseg = priv->mdev->iseg;
 do {
  hw_h = ioread32be(&iseg->internal_timer_h);
  hw_l = ioread32be(&iseg->internal_timer_l);
  hw_h1 = ioread32be(&iseg->internal_timer_h);
 } while (hw_h1 != hw_h);
 return (((uint64_t)hw_h << 32) | hw_l);
}
