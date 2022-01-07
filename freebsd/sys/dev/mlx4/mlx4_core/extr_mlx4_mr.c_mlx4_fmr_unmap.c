
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int enabled; int key; } ;
struct mlx4_fmr {TYPE_2__ mr; scalar_t__ maps; } ;
struct TYPE_3__ {int num_mpts; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {int dummy; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_MPT_EN_SW ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int key_to_hw_index (int ) ;
 int mlx4_HW2SW_MPT (struct mlx4_dev*,int *,int) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;
 int pr_warn (char*,int) ;

void mlx4_fmr_unmap(struct mlx4_dev *dev, struct mlx4_fmr *fmr,
      u32 *lkey, u32 *rkey)
{
 struct mlx4_cmd_mailbox *mailbox;
 int err;

 if (!fmr->maps)
  return;

 fmr->maps = 0;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox)) {
  err = PTR_ERR(mailbox);
  pr_warn("mlx4_ib: mlx4_alloc_cmd_mailbox failed (%d)\n", err);
  return;
 }

 err = mlx4_HW2SW_MPT(dev, ((void*)0),
        key_to_hw_index(fmr->mr.key) &
        (dev->caps.num_mpts - 1));
 mlx4_free_cmd_mailbox(dev, mailbox);
 if (err) {
  pr_warn("mlx4_ib: mlx4_HW2SW_MPT failed (%d)\n", err);
  return;
 }
 fmr->mr.enabled = MLX4_MPT_EN_SW;
}
