
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_fpga_transaction {int (* complete1 ) (struct mlx5_fpga_transaction const*,int ) ;} ;
struct mlx5_fpga_trans_priv {struct mlx5_fpga_transaction* user_trans; int status; int state; int tid; } ;
struct mlx5_fpga_device {TYPE_1__* trans; } ;
struct TYPE_2__ {int lock; } ;


 int TRANS_STATE_COMPLETE ;
 int free_tid (struct mlx5_fpga_device*,struct mlx5_fpga_trans_priv*) ;
 int mlx5_fpga_dbg (struct mlx5_fpga_device*,char*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct mlx5_fpga_transaction const*,int ) ;

__attribute__((used)) static void trans_complete(struct mlx5_fpga_device *fdev,
      struct mlx5_fpga_trans_priv *trans_priv, u8 status)
{
 const struct mlx5_fpga_transaction *user_trans;
 unsigned long flags;

 mlx5_fpga_dbg(fdev, "Transaction %u is complete with status %u\n",
        trans_priv->tid, status);

 spin_lock_irqsave(&fdev->trans->lock, flags);
 trans_priv->state = TRANS_STATE_COMPLETE;
 trans_priv->status = status;
 spin_unlock_irqrestore(&fdev->trans->lock, flags);

 user_trans = trans_priv->user_trans;
 free_tid(fdev, trans_priv);

 if (user_trans->complete1)
  user_trans->complete1(user_trans, status);
}
