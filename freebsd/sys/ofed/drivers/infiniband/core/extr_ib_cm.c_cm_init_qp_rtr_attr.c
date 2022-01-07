
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int dlid; } ;
struct ib_qp_attr {TYPE_4__ alt_ah_attr; int alt_timeout; int alt_pkey_index; int alt_port_num; int min_rnr_timer; int max_dest_rd_atomic; void* rq_psn; void* dest_qp_num; int path_mtu; int ah_attr; } ;
struct TYPE_10__ {TYPE_4__ ah_attr; int timeout; int pkey_index; TYPE_3__* port; } ;
struct TYPE_7__ {int ah_attr; } ;
struct TYPE_6__ {int state; } ;
struct cm_id_private {int lock; TYPE_5__ alt_av; int responder_resources; int qp_type; int rq_psn; int remote_qpn; int path_mtu; TYPE_2__ av; TYPE_1__ id; } ;
struct TYPE_8__ {int port_num; } ;


 int EINVAL ;







 int IB_QPT_RC ;
 int IB_QPT_XRC_TGT ;
 int IB_QP_ALT_PATH ;
 int IB_QP_AV ;
 int IB_QP_DEST_QPN ;
 int IB_QP_MAX_DEST_RD_ATOMIC ;
 int IB_QP_MIN_RNR_TIMER ;
 int IB_QP_PATH_MTU ;
 int IB_QP_RQ_PSN ;
 int IB_QP_STATE ;
 void* be32_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cm_init_qp_rtr_attr(struct cm_id_private *cm_id_priv,
          struct ib_qp_attr *qp_attr,
          int *qp_attr_mask)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&cm_id_priv->lock, flags);
 switch (cm_id_priv->id.state) {
 case 128:
 case 131:
 case 130:
 case 132:
 case 129:
 case 133:
 case 134:
  *qp_attr_mask = IB_QP_STATE | IB_QP_AV | IB_QP_PATH_MTU |
    IB_QP_DEST_QPN | IB_QP_RQ_PSN;
  qp_attr->ah_attr = cm_id_priv->av.ah_attr;
  qp_attr->path_mtu = cm_id_priv->path_mtu;
  qp_attr->dest_qp_num = be32_to_cpu(cm_id_priv->remote_qpn);
  qp_attr->rq_psn = be32_to_cpu(cm_id_priv->rq_psn);
  if (cm_id_priv->qp_type == IB_QPT_RC ||
      cm_id_priv->qp_type == IB_QPT_XRC_TGT) {
   *qp_attr_mask |= IB_QP_MAX_DEST_RD_ATOMIC |
      IB_QP_MIN_RNR_TIMER;
   qp_attr->max_dest_rd_atomic =
     cm_id_priv->responder_resources;
   qp_attr->min_rnr_timer = 0;
  }
  if (cm_id_priv->alt_av.ah_attr.dlid) {
   *qp_attr_mask |= IB_QP_ALT_PATH;
   qp_attr->alt_port_num = cm_id_priv->alt_av.port->port_num;
   qp_attr->alt_pkey_index = cm_id_priv->alt_av.pkey_index;
   qp_attr->alt_timeout = cm_id_priv->alt_av.timeout;
   qp_attr->alt_ah_attr = cm_id_priv->alt_av.ah_attr;
  }
  ret = 0;
  break;
 default:
  ret = -EINVAL;
  break;
 }
 spin_unlock_irqrestore(&cm_id_priv->lock, flags);
 return ret;
}
