
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_comp_vectors; } ;
struct TYPE_6__ {int disable_irqs; TYPE_2__* msix_arr; TYPE_1__ eq_table; } ;
struct mlx5_core_dev {TYPE_3__ priv; } ;
struct TYPE_5__ {int vector; } ;


 int MLX5_EQ_VEC_COMP_BASE ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void mlx5_disable_interrupts(struct mlx5_core_dev *mdev)
{
 int nvec = mdev->priv.eq_table.num_comp_vectors + MLX5_EQ_VEC_COMP_BASE;
 int x;

 mdev->priv.disable_irqs = 1;


 for (x = 0; x != nvec; x++)
  synchronize_irq(mdev->priv.msix_arr[x].vector);
}
