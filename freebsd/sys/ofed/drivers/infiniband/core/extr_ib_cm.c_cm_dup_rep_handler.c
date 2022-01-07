
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ib_mad_send_buf {scalar_t__ mad; } ;
struct cm_work {TYPE_5__* mad_recv_wc; TYPE_4__* port; } ;
struct cm_rtu_msg {int dummy; } ;
struct cm_rep_msg {int local_comm_id; int remote_comm_id; } ;
struct cm_mra_msg {int dummy; } ;
struct TYPE_8__ {scalar_t__ state; } ;
struct cm_id_private {int lock; int private_data_len; int private_data; int service_timeout; TYPE_3__ id; } ;
struct TYPE_6__ {scalar_t__ mad; } ;
struct TYPE_10__ {TYPE_1__ recv_buf; } ;
struct TYPE_9__ {TYPE_2__* counter_group; } ;
struct TYPE_7__ {int * counter; } ;


 int CM_MSG_RESPONSE_REP ;
 size_t CM_RECV_DUPLICATES ;
 size_t CM_REP_COUNTER ;
 scalar_t__ IB_CM_ESTABLISHED ;
 scalar_t__ IB_CM_MRA_REP_SENT ;
 int atomic_long_inc (int *) ;
 struct cm_id_private* cm_acquire_id (int ,int ) ;
 int cm_alloc_response_msg (TYPE_4__*,TYPE_5__*,struct ib_mad_send_buf**) ;
 int cm_deref_id (struct cm_id_private*) ;
 int cm_format_mra (struct cm_mra_msg*,struct cm_id_private*,int ,int ,int ,int ) ;
 int cm_format_rtu (struct cm_rtu_msg*,struct cm_id_private*,int ,int ) ;
 int cm_free_msg (struct ib_mad_send_buf*) ;
 int ib_post_send_mad (struct ib_mad_send_buf*,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void cm_dup_rep_handler(struct cm_work *work)
{
 struct cm_id_private *cm_id_priv;
 struct cm_rep_msg *rep_msg;
 struct ib_mad_send_buf *msg = ((void*)0);
 int ret;

 rep_msg = (struct cm_rep_msg *) work->mad_recv_wc->recv_buf.mad;
 cm_id_priv = cm_acquire_id(rep_msg->remote_comm_id,
       rep_msg->local_comm_id);
 if (!cm_id_priv)
  return;

 atomic_long_inc(&work->port->counter_group[CM_RECV_DUPLICATES].
   counter[CM_REP_COUNTER]);
 ret = cm_alloc_response_msg(work->port, work->mad_recv_wc, &msg);
 if (ret)
  goto deref;

 spin_lock_irq(&cm_id_priv->lock);
 if (cm_id_priv->id.state == IB_CM_ESTABLISHED)
  cm_format_rtu((struct cm_rtu_msg *) msg->mad, cm_id_priv,
         cm_id_priv->private_data,
         cm_id_priv->private_data_len);
 else if (cm_id_priv->id.state == IB_CM_MRA_REP_SENT)
  cm_format_mra((struct cm_mra_msg *) msg->mad, cm_id_priv,
         CM_MSG_RESPONSE_REP, cm_id_priv->service_timeout,
         cm_id_priv->private_data,
         cm_id_priv->private_data_len);
 else
  goto unlock;
 spin_unlock_irq(&cm_id_priv->lock);

 ret = ib_post_send_mad(msg, ((void*)0));
 if (ret)
  goto free;
 goto deref;

unlock: spin_unlock_irq(&cm_id_priv->lock);
free: cm_free_msg(msg);
deref: cm_deref_id(cm_id_priv);
}
