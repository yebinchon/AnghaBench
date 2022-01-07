
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ib_qp_attr {int qp_access_flags; int port_num; int pkey_index; } ;
struct TYPE_6__ {TYPE_2__* port; int pkey_index; } ;
struct TYPE_4__ {int state; } ;
struct cm_id_private {int lock; TYPE_3__ av; int responder_resources; TYPE_1__ id; } ;
struct TYPE_5__ {int port_num; } ;


 int EINVAL ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int IB_QP_ACCESS_FLAGS ;
 int IB_QP_PKEY_INDEX ;
 int IB_QP_PORT ;
 int IB_QP_STATE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cm_init_qp_init_attr(struct cm_id_private *cm_id_priv,
    struct ib_qp_attr *qp_attr,
    int *qp_attr_mask)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&cm_id_priv->lock, flags);
 switch (cm_id_priv->id.state) {
 case 128:
 case 133:
 case 129:
 case 132:
 case 131:
 case 134:
 case 130:
 case 135:
 case 136:
  *qp_attr_mask = IB_QP_STATE | IB_QP_ACCESS_FLAGS |
    IB_QP_PKEY_INDEX | IB_QP_PORT;
  qp_attr->qp_access_flags = IB_ACCESS_REMOTE_WRITE;
  if (cm_id_priv->responder_resources)
   qp_attr->qp_access_flags |= IB_ACCESS_REMOTE_READ |
          IB_ACCESS_REMOTE_ATOMIC;
  qp_attr->pkey_index = cm_id_priv->av.pkey_index;
  qp_attr->port_num = cm_id_priv->av.port->port_num;
  ret = 0;
  break;
 default:
  ret = -EINVAL;
  break;
 }
 spin_unlock_irqrestore(&cm_id_priv->lock, flags);
 return ret;
}
