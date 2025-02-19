
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx4_func_cap {int flags; int num_ports; int pf_context_behaviour; int qp_quota; int srq_quota; int cq_quota; int mpt_quota; int mtt_quota; int mcg_quota; int max_eq; int reserved_eq; int reserved_lkey; int flags1; int physical_port; int qp0_qkey; int qp0_tunnel_qpn; int qp0_proxy_qpn; int qp1_tunnel_qpn; int qp1_proxy_qpn; int phys_port_id; int flags0; int extra_flags; } ;
struct TYPE_2__ {int num_ports; scalar_t__* port_type; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {int* buf; int dma; } ;


 int EINVAL ;
 int ENOSYS ;
 int EPROTONOSUPPORT ;
 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_QUERY_FUNC_CAP ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int MLX4_GET (int,int*,int ) ;
 scalar_t__ MLX4_PORT_TYPE_ETH ;
 scalar_t__ MLX4_PORT_TYPE_IB ;
 int MLX4_QUERY_FUNC_FLAGS_A0_RES_QP ;
 int MLX4_QUERY_FUNC_FLAGS_BF_RES_QP ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int QUERY_FUNC_CAP_CQ_QUOTA_OFFSET ;
 int QUERY_FUNC_CAP_CQ_QUOTA_OFFSET_DEP ;
 int QUERY_FUNC_CAP_EXTRA_FLAGS_A0_QP_ALLOC_FLAG ;
 int QUERY_FUNC_CAP_EXTRA_FLAGS_BF_QP_ALLOC_FLAG ;
 int QUERY_FUNC_CAP_EXTRA_FLAGS_OFFSET ;
 int QUERY_FUNC_CAP_FLAGS0_FORCE_PHY_WQE_GID ;
 int QUERY_FUNC_CAP_FLAGS0_OFFSET ;
 int QUERY_FUNC_CAP_FLAGS1_FORCE_MAC ;
 int QUERY_FUNC_CAP_FLAGS1_FORCE_VLAN ;
 int QUERY_FUNC_CAP_FLAGS1_NIC_INFO ;
 int QUERY_FUNC_CAP_FLAGS1_OFFSET ;
 int QUERY_FUNC_CAP_FLAGS_OFFSET ;
 int QUERY_FUNC_CAP_FLAG_ETH ;
 int QUERY_FUNC_CAP_FLAG_QUOTAS ;
 int QUERY_FUNC_CAP_FLAG_RDMA ;
 int QUERY_FUNC_CAP_FLAG_RESD_LKEY ;
 int QUERY_FUNC_CAP_FLAG_VALID_MAILBOX ;
 int QUERY_FUNC_CAP_MAX_EQ_OFFSET ;
 int QUERY_FUNC_CAP_MCG_QUOTA_OFFSET ;
 int QUERY_FUNC_CAP_MCG_QUOTA_OFFSET_DEP ;
 int QUERY_FUNC_CAP_MPT_QUOTA_OFFSET ;
 int QUERY_FUNC_CAP_MPT_QUOTA_OFFSET_DEP ;
 int QUERY_FUNC_CAP_MTT_QUOTA_OFFSET ;
 int QUERY_FUNC_CAP_MTT_QUOTA_OFFSET_DEP ;
 int QUERY_FUNC_CAP_NUM_PORTS_OFFSET ;
 int QUERY_FUNC_CAP_PF_BHVR_OFFSET ;
 int QUERY_FUNC_CAP_PHYS_PORT_ID ;
 int QUERY_FUNC_CAP_PHYS_PORT_OFFSET ;
 int QUERY_FUNC_CAP_PRIV_VF_QKEY_OFFSET ;
 int QUERY_FUNC_CAP_QP0_PROXY ;
 int QUERY_FUNC_CAP_QP0_TUNNEL ;
 int QUERY_FUNC_CAP_QP1_PROXY ;
 int QUERY_FUNC_CAP_QP1_TUNNEL ;
 int QUERY_FUNC_CAP_QP_QUOTA_OFFSET ;
 int QUERY_FUNC_CAP_QP_QUOTA_OFFSET_DEP ;
 int QUERY_FUNC_CAP_QP_RESD_LKEY_OFFSET ;
 int QUERY_FUNC_CAP_RESERVED_EQ_OFFSET ;
 int QUERY_FUNC_CAP_SRQ_QUOTA_OFFSET ;
 int QUERY_FUNC_CAP_SRQ_QUOTA_OFFSET_DEP ;
 int QUERY_FUNC_CAP_SUPPORTS_NON_POWER_OF_2_NUM_EQS ;
 int QUERY_FUNC_CAP_SUPPORTS_VST_QINQ ;
 int QUERY_FUNC_CAP_VF_ENABLE_QP0 ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,int,int,int ,int ,int ) ;
 int mlx4_err (struct mlx4_dev*,char*) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;

int mlx4_QUERY_FUNC_CAP(struct mlx4_dev *dev, u8 gen_or_port,
   struct mlx4_func_cap *func_cap)
{
 struct mlx4_cmd_mailbox *mailbox;
 u32 *outbox;
 u8 field, op_modifier;
 u32 size, qkey;
 int err = 0, quotas = 0;
 u32 in_modifier;
 u32 slave_caps;

 op_modifier = !!gen_or_port;
 slave_caps = QUERY_FUNC_CAP_SUPPORTS_VST_QINQ |
  QUERY_FUNC_CAP_SUPPORTS_NON_POWER_OF_2_NUM_EQS;
 in_modifier = op_modifier ? gen_or_port : slave_caps;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 err = mlx4_cmd_box(dev, 0, mailbox->dma, in_modifier, op_modifier,
      MLX4_CMD_QUERY_FUNC_CAP,
      MLX4_CMD_TIME_CLASS_A, MLX4_CMD_WRAPPED);
 if (err)
  goto out;

 outbox = mailbox->buf;

 if (!op_modifier) {
  MLX4_GET(field, outbox, QUERY_FUNC_CAP_FLAGS_OFFSET);
  if (!(field & (QUERY_FUNC_CAP_FLAG_ETH | QUERY_FUNC_CAP_FLAG_RDMA))) {
   mlx4_err(dev, "The host supports neither eth nor rdma interfaces\n");
   err = -EPROTONOSUPPORT;
   goto out;
  }
  func_cap->flags = field;
  quotas = !!(func_cap->flags & QUERY_FUNC_CAP_FLAG_QUOTAS);

  MLX4_GET(field, outbox, QUERY_FUNC_CAP_NUM_PORTS_OFFSET);
  func_cap->num_ports = field;

  MLX4_GET(size, outbox, QUERY_FUNC_CAP_PF_BHVR_OFFSET);
  func_cap->pf_context_behaviour = size;

  if (quotas) {
   MLX4_GET(size, outbox, QUERY_FUNC_CAP_QP_QUOTA_OFFSET);
   func_cap->qp_quota = size & 0xFFFFFF;

   MLX4_GET(size, outbox, QUERY_FUNC_CAP_SRQ_QUOTA_OFFSET);
   func_cap->srq_quota = size & 0xFFFFFF;

   MLX4_GET(size, outbox, QUERY_FUNC_CAP_CQ_QUOTA_OFFSET);
   func_cap->cq_quota = size & 0xFFFFFF;

   MLX4_GET(size, outbox, QUERY_FUNC_CAP_MPT_QUOTA_OFFSET);
   func_cap->mpt_quota = size & 0xFFFFFF;

   MLX4_GET(size, outbox, QUERY_FUNC_CAP_MTT_QUOTA_OFFSET);
   func_cap->mtt_quota = size & 0xFFFFFF;

   MLX4_GET(size, outbox, QUERY_FUNC_CAP_MCG_QUOTA_OFFSET);
   func_cap->mcg_quota = size & 0xFFFFFF;

  } else {
   MLX4_GET(size, outbox, QUERY_FUNC_CAP_QP_QUOTA_OFFSET_DEP);
   func_cap->qp_quota = size & 0xFFFFFF;

   MLX4_GET(size, outbox, QUERY_FUNC_CAP_SRQ_QUOTA_OFFSET_DEP);
   func_cap->srq_quota = size & 0xFFFFFF;

   MLX4_GET(size, outbox, QUERY_FUNC_CAP_CQ_QUOTA_OFFSET_DEP);
   func_cap->cq_quota = size & 0xFFFFFF;

   MLX4_GET(size, outbox, QUERY_FUNC_CAP_MPT_QUOTA_OFFSET_DEP);
   func_cap->mpt_quota = size & 0xFFFFFF;

   MLX4_GET(size, outbox, QUERY_FUNC_CAP_MTT_QUOTA_OFFSET_DEP);
   func_cap->mtt_quota = size & 0xFFFFFF;

   MLX4_GET(size, outbox, QUERY_FUNC_CAP_MCG_QUOTA_OFFSET_DEP);
   func_cap->mcg_quota = size & 0xFFFFFF;
  }
  MLX4_GET(size, outbox, QUERY_FUNC_CAP_MAX_EQ_OFFSET);
  func_cap->max_eq = size & 0xFFFFFF;

  MLX4_GET(size, outbox, QUERY_FUNC_CAP_RESERVED_EQ_OFFSET);
  func_cap->reserved_eq = size & 0xFFFFFF;

  if (func_cap->flags & QUERY_FUNC_CAP_FLAG_RESD_LKEY) {
   MLX4_GET(size, outbox, QUERY_FUNC_CAP_QP_RESD_LKEY_OFFSET);
   func_cap->reserved_lkey = size;
  } else {
   func_cap->reserved_lkey = 0;
  }

  func_cap->extra_flags = 0;




  if (func_cap->flags & QUERY_FUNC_CAP_FLAG_VALID_MAILBOX) {
   MLX4_GET(size, outbox, QUERY_FUNC_CAP_EXTRA_FLAGS_OFFSET);
   if (size & QUERY_FUNC_CAP_EXTRA_FLAGS_BF_QP_ALLOC_FLAG)
    func_cap->extra_flags |= MLX4_QUERY_FUNC_FLAGS_BF_RES_QP;
   if (size & QUERY_FUNC_CAP_EXTRA_FLAGS_A0_QP_ALLOC_FLAG)
    func_cap->extra_flags |= MLX4_QUERY_FUNC_FLAGS_A0_RES_QP;
  }

  goto out;
 }


 if (gen_or_port > dev->caps.num_ports) {
  err = -EINVAL;
  goto out;
 }

 MLX4_GET(func_cap->flags1, outbox, QUERY_FUNC_CAP_FLAGS1_OFFSET);
 if (dev->caps.port_type[gen_or_port] == MLX4_PORT_TYPE_ETH) {
  if (func_cap->flags1 & QUERY_FUNC_CAP_FLAGS1_FORCE_VLAN) {
   mlx4_err(dev, "VLAN is enforced on this port\n");
   err = -EPROTONOSUPPORT;
   goto out;
  }

  if (func_cap->flags1 & QUERY_FUNC_CAP_FLAGS1_FORCE_MAC) {
   mlx4_err(dev, "Force mac is enabled on this port\n");
   err = -EPROTONOSUPPORT;
   goto out;
  }
 } else if (dev->caps.port_type[gen_or_port] == MLX4_PORT_TYPE_IB) {
  MLX4_GET(field, outbox, QUERY_FUNC_CAP_FLAGS0_OFFSET);
  if (field & QUERY_FUNC_CAP_FLAGS0_FORCE_PHY_WQE_GID) {
   mlx4_err(dev, "phy_wqe_gid is enforced on this ib port\n");
   err = -EPROTONOSUPPORT;
   goto out;
  }
 }

 MLX4_GET(field, outbox, QUERY_FUNC_CAP_PHYS_PORT_OFFSET);
 func_cap->physical_port = field;
 if (func_cap->physical_port != gen_or_port) {
  err = -ENOSYS;
  goto out;
 }

 if (func_cap->flags1 & QUERY_FUNC_CAP_VF_ENABLE_QP0) {
  MLX4_GET(qkey, outbox, QUERY_FUNC_CAP_PRIV_VF_QKEY_OFFSET);
  func_cap->qp0_qkey = qkey;
 } else {
  func_cap->qp0_qkey = 0;
 }

 MLX4_GET(size, outbox, QUERY_FUNC_CAP_QP0_TUNNEL);
 func_cap->qp0_tunnel_qpn = size & 0xFFFFFF;

 MLX4_GET(size, outbox, QUERY_FUNC_CAP_QP0_PROXY);
 func_cap->qp0_proxy_qpn = size & 0xFFFFFF;

 MLX4_GET(size, outbox, QUERY_FUNC_CAP_QP1_TUNNEL);
 func_cap->qp1_tunnel_qpn = size & 0xFFFFFF;

 MLX4_GET(size, outbox, QUERY_FUNC_CAP_QP1_PROXY);
 func_cap->qp1_proxy_qpn = size & 0xFFFFFF;

 if (func_cap->flags1 & QUERY_FUNC_CAP_FLAGS1_NIC_INFO)
  MLX4_GET(func_cap->phys_port_id, outbox,
    QUERY_FUNC_CAP_PHYS_PORT_ID);

 MLX4_GET(func_cap->flags0, outbox, QUERY_FUNC_CAP_FLAGS0_OFFSET);
out:
 mlx4_free_cmd_mailbox(dev, mailbox);

 return err;
}
