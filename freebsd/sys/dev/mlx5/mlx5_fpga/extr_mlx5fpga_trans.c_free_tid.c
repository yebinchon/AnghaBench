
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_fpga_trans_priv {int list_item; } ;
struct mlx5_fpga_device {TYPE_1__* trans; } ;
struct TYPE_2__ {int lock; int free_queue; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void free_tid(struct mlx5_fpga_device *fdev,
       struct mlx5_fpga_trans_priv *trans_priv)
{
 unsigned long flags;

 spin_lock_irqsave(&fdev->trans->lock, flags);
 list_add_tail(&trans_priv->list_item, &fdev->trans->free_queue);
 spin_unlock_irqrestore(&fdev->trans->lock, flags);
}
