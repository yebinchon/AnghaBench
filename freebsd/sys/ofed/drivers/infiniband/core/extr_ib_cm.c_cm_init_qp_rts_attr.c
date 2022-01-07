
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
struct ib_qp_attr {void* path_mig_state; TYPE_4__ alt_ah_attr; int alt_timeout; int alt_pkey_index; int alt_port_num; int timeout; int max_rd_atomic; int rnr_retry; int retry_cnt; int sq_psn; } ;
struct TYPE_10__ {TYPE_4__ ah_attr; int timeout; int pkey_index; TYPE_3__* port; } ;
struct TYPE_7__ {int timeout; } ;
struct TYPE_6__ {int state; int lap_state; } ;
struct cm_id_private {int lock; TYPE_5__ alt_av; TYPE_2__ av; int initiator_depth; int rnr_retry_count; int retry_count; int qp_type; int sq_psn; TYPE_1__ id; } ;
struct TYPE_8__ {int port_num; } ;


 int EINVAL ;

 int IB_CM_LAP_UNINIT ;






 void* IB_MIG_REARM ;



 int IB_QP_ALT_PATH ;
 int IB_QP_MAX_QP_RD_ATOMIC ;
 int IB_QP_PATH_MIG_STATE ;
 int IB_QP_RETRY_CNT ;
 int IB_QP_RNR_RETRY ;
 int IB_QP_SQ_PSN ;
 int IB_QP_STATE ;
 int IB_QP_TIMEOUT ;
 int be32_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cm_init_qp_rts_attr(struct cm_id_private *cm_id_priv,
          struct ib_qp_attr *qp_attr,
          int *qp_attr_mask)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&cm_id_priv->lock, flags);
 switch (cm_id_priv->id.state) {

 case 131:
 case 134:

 case 133:
 case 135:
 case 132:
 case 136:
 case 137:
  if (cm_id_priv->id.lap_state == IB_CM_LAP_UNINIT) {
   *qp_attr_mask = IB_QP_STATE | IB_QP_SQ_PSN;
   qp_attr->sq_psn = be32_to_cpu(cm_id_priv->sq_psn);
   switch (cm_id_priv->qp_type) {
   case 130:
   case 129:
    *qp_attr_mask |= IB_QP_RETRY_CNT | IB_QP_RNR_RETRY |
       IB_QP_MAX_QP_RD_ATOMIC;
    qp_attr->retry_cnt = cm_id_priv->retry_count;
    qp_attr->rnr_retry = cm_id_priv->rnr_retry_count;
    qp_attr->max_rd_atomic = cm_id_priv->initiator_depth;

   case 128:
    *qp_attr_mask |= IB_QP_TIMEOUT;
    qp_attr->timeout = cm_id_priv->av.timeout;
    break;
   default:
    break;
   }
   if (cm_id_priv->alt_av.ah_attr.dlid) {
    *qp_attr_mask |= IB_QP_PATH_MIG_STATE;
    qp_attr->path_mig_state = IB_MIG_REARM;
   }
  } else {
   *qp_attr_mask = IB_QP_ALT_PATH | IB_QP_PATH_MIG_STATE;
   qp_attr->alt_port_num = cm_id_priv->alt_av.port->port_num;
   qp_attr->alt_pkey_index = cm_id_priv->alt_av.pkey_index;
   qp_attr->alt_timeout = cm_id_priv->alt_av.timeout;
   qp_attr->alt_ah_attr = cm_id_priv->alt_av.ah_attr;
   qp_attr->path_mig_state = IB_MIG_REARM;
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
