
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_4__ {scalar_t__ from_state; } ;
struct res_qp {void* feup; void* vlan_index; void* pri_path_fl; void* fvl_rx; void* vlan_control; int param3; void* sched_queue; TYPE_2__ com; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct TYPE_3__ {void* sched_queue; void* feup; void* vlan_index; void* fl; void* fvl_rx; void* vlan_control; } ;
struct mlx4_qp_context {TYPE_1__ pri_path; int param3; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {struct mlx4_qp_context* buf; } ;
struct mlx4_cmd_info {int dummy; } ;
typedef int __be32 ;


 int EBUSY ;
 int EINVAL ;
 int QP_TRANS_INIT2RTR ;
 int RES_QP ;
 scalar_t__ RES_QP_HW ;
 int adjust_proxy_tun_qkey (struct mlx4_dev*,struct mlx4_vhcr*,struct mlx4_qp_context*) ;
 int adjust_qp_sched_queue (struct mlx4_dev*,int,struct mlx4_qp_context*,struct mlx4_cmd_mailbox*) ;
 int get_res (struct mlx4_dev*,int,int,int ,struct res_qp**) ;
 int mlx4_DMA_wrapper (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ;
 int put_res (struct mlx4_dev*,int,int,int ) ;
 scalar_t__ roce_verify_mac (struct mlx4_dev*,int,struct mlx4_qp_context*,struct mlx4_cmd_mailbox*) ;
 int update_gid (struct mlx4_dev*,struct mlx4_cmd_mailbox*,void*) ;
 int update_pkey_index (struct mlx4_dev*,int,struct mlx4_cmd_mailbox*) ;
 int update_vport_qp_param (struct mlx4_dev*,struct mlx4_cmd_mailbox*,int,int) ;
 int verify_qp_parameters (struct mlx4_dev*,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,int ,int) ;

int mlx4_INIT2RTR_QP_wrapper(struct mlx4_dev *dev, int slave,
        struct mlx4_vhcr *vhcr,
        struct mlx4_cmd_mailbox *inbox,
        struct mlx4_cmd_mailbox *outbox,
        struct mlx4_cmd_info *cmd)
{
 int err;
 struct mlx4_qp_context *qpc = inbox->buf + 8;
 int qpn = vhcr->in_modifier & 0x7fffff;
 struct res_qp *qp;
 u8 orig_sched_queue;
 __be32 orig_param3 = qpc->param3;
 u8 orig_vlan_control = qpc->pri_path.vlan_control;
 u8 orig_fvl_rx = qpc->pri_path.fvl_rx;
 u8 orig_pri_path_fl = qpc->pri_path.fl;
 u8 orig_vlan_index = qpc->pri_path.vlan_index;
 u8 orig_feup = qpc->pri_path.feup;

 err = adjust_qp_sched_queue(dev, slave, qpc, inbox);
 if (err)
  return err;
 err = verify_qp_parameters(dev, vhcr, inbox, QP_TRANS_INIT2RTR, slave);
 if (err)
  return err;

 if (roce_verify_mac(dev, slave, qpc, inbox))
  return -EINVAL;

 update_pkey_index(dev, slave, inbox);
 update_gid(dev, inbox, (u8)slave);
 adjust_proxy_tun_qkey(dev, vhcr, qpc);
 orig_sched_queue = qpc->pri_path.sched_queue;

 err = get_res(dev, slave, qpn, RES_QP, &qp);
 if (err)
  return err;
 if (qp->com.from_state != RES_QP_HW) {
  err = -EBUSY;
  goto out;
 }

 err = update_vport_qp_param(dev, inbox, slave, qpn);
 if (err)
  goto out;

 err = mlx4_DMA_wrapper(dev, slave, vhcr, inbox, outbox, cmd);
out:




 if (!err) {
  qp->sched_queue = orig_sched_queue;
  qp->param3 = orig_param3;
  qp->vlan_control = orig_vlan_control;
  qp->fvl_rx = orig_fvl_rx;
  qp->pri_path_fl = orig_pri_path_fl;
  qp->vlan_index = orig_vlan_index;
  qp->feup = orig_feup;
 }
 put_res(dev, slave, qpn, RES_QP);
 return err;
}
