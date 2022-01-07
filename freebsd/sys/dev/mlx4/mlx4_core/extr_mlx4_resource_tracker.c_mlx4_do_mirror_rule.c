
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int owner; } ;
struct res_fs_rule {int mirr_mbox_size; TYPE_1__ com; int * mirr_mbox; scalar_t__ mirr_rule_id; int qpn; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; int buf; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_QP_FLOW_STEERING_ATTACH ;
 int MLX4_QP_FLOW_STEERING_DETACH ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int RES_FS_RULE ;
 int add_res_range (struct mlx4_dev*,int ,scalar_t__,int,int ,int ) ;
 int get_res (struct mlx4_dev*,int ,scalar_t__,int ,struct res_fs_rule**) ;
 int memcpy (int ,int *,int) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd (struct mlx4_dev*,scalar_t__,int ,int ,int ,int ,int ) ;
 int mlx4_cmd_imm (struct mlx4_dev*,int ,scalar_t__*,int,int ,int ,int ,int ) ;
 int mlx4_err (struct mlx4_dev*,char*) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;
 int put_res (struct mlx4_dev*,int ,scalar_t__,int ) ;
 int rem_res_range (struct mlx4_dev*,int ,scalar_t__,int,int ,int ) ;

__attribute__((used)) static int mlx4_do_mirror_rule(struct mlx4_dev *dev, struct res_fs_rule *fs_rule)
{
 struct mlx4_cmd_mailbox *mailbox;
 int err;
 struct res_fs_rule *mirr_rule;
 u64 reg_id;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 if (!fs_rule->mirr_mbox) {
  mlx4_err(dev, "rule mirroring mailbox is null\n");
  return -EINVAL;
 }
 memcpy(mailbox->buf, fs_rule->mirr_mbox, fs_rule->mirr_mbox_size);
 err = mlx4_cmd_imm(dev, mailbox->dma, &reg_id, fs_rule->mirr_mbox_size >> 2, 0,
      MLX4_QP_FLOW_STEERING_ATTACH, MLX4_CMD_TIME_CLASS_A,
      MLX4_CMD_NATIVE);
 mlx4_free_cmd_mailbox(dev, mailbox);

 if (err)
  goto err;

 err = add_res_range(dev, fs_rule->com.owner, reg_id, 1, RES_FS_RULE, fs_rule->qpn);
 if (err)
  goto err_detach;

 err = get_res(dev, fs_rule->com.owner, reg_id, RES_FS_RULE, &mirr_rule);
 if (err)
  goto err_rem;

 fs_rule->mirr_rule_id = reg_id;
 mirr_rule->mirr_rule_id = 0;
 mirr_rule->mirr_mbox_size = 0;
 mirr_rule->mirr_mbox = ((void*)0);
 put_res(dev, fs_rule->com.owner, reg_id, RES_FS_RULE);

 return 0;
err_rem:
 rem_res_range(dev, fs_rule->com.owner, reg_id, 1, RES_FS_RULE, 0);
err_detach:
 mlx4_cmd(dev, reg_id, 0, 0, MLX4_QP_FLOW_STEERING_DETACH,
   MLX4_CMD_TIME_CLASS_A, MLX4_CMD_NATIVE);
err:
 return err;
}
