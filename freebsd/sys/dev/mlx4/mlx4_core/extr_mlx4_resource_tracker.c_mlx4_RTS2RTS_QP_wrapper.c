
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx4_vhcr {int dummy; } ;
struct mlx4_qp_context {int dummy; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {struct mlx4_qp_context* buf; } ;
struct mlx4_cmd_info {int dummy; } ;


 int QP_TRANS_RTS2RTS ;
 int adjust_proxy_tun_qkey (struct mlx4_dev*,struct mlx4_vhcr*,struct mlx4_qp_context*) ;
 int adjust_qp_sched_queue (struct mlx4_dev*,int,struct mlx4_qp_context*,struct mlx4_cmd_mailbox*) ;
 int mlx4_GEN_QP_wrapper (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ;
 int update_gid (struct mlx4_dev*,struct mlx4_cmd_mailbox*,int ) ;
 int update_pkey_index (struct mlx4_dev*,int,struct mlx4_cmd_mailbox*) ;
 int verify_qp_parameters (struct mlx4_dev*,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,int ,int) ;

int mlx4_RTS2RTS_QP_wrapper(struct mlx4_dev *dev, int slave,
       struct mlx4_vhcr *vhcr,
       struct mlx4_cmd_mailbox *inbox,
       struct mlx4_cmd_mailbox *outbox,
       struct mlx4_cmd_info *cmd)
{
 int err;
 struct mlx4_qp_context *context = inbox->buf + 8;

 err = adjust_qp_sched_queue(dev, slave, context, inbox);
 if (err)
  return err;
 err = verify_qp_parameters(dev, vhcr, inbox, QP_TRANS_RTS2RTS, slave);
 if (err)
  return err;

 update_pkey_index(dev, slave, inbox);
 update_gid(dev, inbox, (u8)slave);
 adjust_proxy_tun_qkey(dev, vhcr, context);
 return mlx4_GEN_QP_wrapper(dev, slave, vhcr, inbox, outbox, cmd);
}
