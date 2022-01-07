
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ from_state; } ;
struct res_mpt {TYPE_2__ com; int key; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct mlx4_mpt_entry {int dummy; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int * buf; } ;
struct mlx4_cmd_info {int dummy; } ;
struct TYPE_4__ {int dmpt_table; } ;
struct TYPE_6__ {TYPE_1__ mr_table; } ;


 int EBUSY ;
 int EINVAL ;
 int RES_MPT ;
 scalar_t__ RES_MPT_HW ;
 scalar_t__ RES_MPT_MAPPED ;
 int get_res (struct mlx4_dev*,int,int,int ,struct res_mpt**) ;
 int memcpy (int *,struct mlx4_mpt_entry*,int) ;
 int mlx4_DMA_wrapper (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ;
 TYPE_3__* mlx4_priv (struct mlx4_dev*) ;
 struct mlx4_mpt_entry* mlx4_table_find (int *,int ,int *) ;
 int mpt_mask (struct mlx4_dev*) ;
 int put_res (struct mlx4_dev*,int,int,int ) ;

int mlx4_QUERY_MPT_wrapper(struct mlx4_dev *dev, int slave,
      struct mlx4_vhcr *vhcr,
      struct mlx4_cmd_mailbox *inbox,
      struct mlx4_cmd_mailbox *outbox,
      struct mlx4_cmd_info *cmd)
{
 int err;
 int index = vhcr->in_modifier;
 struct res_mpt *mpt;
 int id;

 id = index & mpt_mask(dev);
 err = get_res(dev, slave, id, RES_MPT, &mpt);
 if (err)
  return err;

 if (mpt->com.from_state == RES_MPT_MAPPED) {
  struct mlx4_mpt_entry *mpt_entry = mlx4_table_find(
     &mlx4_priv(dev)->mr_table.dmpt_table,
     mpt->key, ((void*)0));

  if (((void*)0) == mpt_entry || ((void*)0) == outbox->buf) {
   err = -EINVAL;
   goto out;
  }

  memcpy(outbox->buf, mpt_entry, sizeof(*mpt_entry));

  err = 0;
 } else if (mpt->com.from_state == RES_MPT_HW) {
  err = mlx4_DMA_wrapper(dev, slave, vhcr, inbox, outbox, cmd);
 } else {
  err = -EBUSY;
  goto out;
 }


out:
 put_res(dev, slave, id, RES_MPT);
 return err;
}
