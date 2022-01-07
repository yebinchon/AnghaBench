
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_eq {struct mlx5_core_dev* dev; } ;
struct TYPE_2__ {scalar_t__ disable_irqs; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ likely (int) ;
 int mlx5_eq_int (struct mlx5_core_dev*,struct mlx5_eq*) ;

__attribute__((used)) static irqreturn_t mlx5_msix_handler(int irq, void *eq_ptr)
{
 struct mlx5_eq *eq = eq_ptr;
 struct mlx5_core_dev *dev = eq->dev;


 if (likely(dev->priv.disable_irqs == 0))
  mlx5_eq_int(dev, eq);


 return IRQ_HANDLED;
}
