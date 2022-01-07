
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct ib_mad_send_buf {scalar_t__ mad; } ;
struct TYPE_15__ {int * private_data; } ;
struct cm_work {int list; TYPE_8__* port; TYPE_9__* mad_recv_wc; TYPE_2__ cm_event; } ;
struct TYPE_19__ {int state; int lap_state; } ;
struct TYPE_17__ {TYPE_3__* port; } ;
struct cm_id_private {scalar_t__ local_qpn; int lock; int work_list; int work_count; int tid; TYPE_6__ id; int private_data_len; int private_data; int msg; TYPE_4__ av; } ;
struct TYPE_20__ {int tid; } ;
struct cm_dreq_msg {TYPE_7__ hdr; int private_data; int local_comm_id; int remote_comm_id; } ;
struct cm_drep_msg {int dummy; } ;
struct TYPE_14__ {scalar_t__ mad; } ;
struct TYPE_22__ {TYPE_1__ recv_buf; } ;
struct TYPE_21__ {TYPE_5__* counter_group; } ;
struct TYPE_18__ {int * counter; } ;
struct TYPE_16__ {int mad_agent; } ;


 size_t CM_DREQ_COUNTER ;
 size_t CM_RECV_DUPLICATES ;
 int EINVAL ;



 int IB_CM_LAP_SENT ;
 int IB_CM_MRA_LAP_RCVD ;



 int IS_ERR (struct ib_mad_send_buf*) ;
 int atomic_inc_and_test (int *) ;
 int atomic_long_inc (int *) ;
 struct cm_id_private* cm_acquire_id (int ,int ) ;
 struct ib_mad_send_buf* cm_alloc_response_msg_no_ah (TYPE_8__*,TYPE_9__*) ;
 int cm_create_response_msg_ah (TYPE_8__*,TYPE_9__*,struct ib_mad_send_buf*) ;
 int cm_deref_id (struct cm_id_private*) ;
 scalar_t__ cm_dreq_get_remote_qpn (struct cm_dreq_msg*) ;
 int cm_format_drep (struct cm_drep_msg*,struct cm_id_private*,int ,int ) ;
 int cm_free_msg (struct ib_mad_send_buf*) ;
 int cm_issue_drep (TYPE_8__*,TYPE_9__*) ;
 int cm_process_work (struct cm_id_private*,struct cm_work*) ;
 int ib_cancel_mad (int ,int ) ;
 int ib_post_send_mad (struct ib_mad_send_buf*,int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int cm_dreq_handler(struct cm_work *work)
{
 struct cm_id_private *cm_id_priv;
 struct cm_dreq_msg *dreq_msg;
 struct ib_mad_send_buf *msg = ((void*)0);
 int ret;

 dreq_msg = (struct cm_dreq_msg *)work->mad_recv_wc->recv_buf.mad;
 cm_id_priv = cm_acquire_id(dreq_msg->remote_comm_id,
       dreq_msg->local_comm_id);
 if (!cm_id_priv) {
  atomic_long_inc(&work->port->counter_group[CM_RECV_DUPLICATES].
    counter[CM_DREQ_COUNTER]);
  cm_issue_drep(work->port, work->mad_recv_wc);
  return -EINVAL;
 }

 work->cm_event.private_data = &dreq_msg->private_data;

 spin_lock_irq(&cm_id_priv->lock);
 if (cm_id_priv->local_qpn != cm_dreq_get_remote_qpn(dreq_msg))
  goto unlock;

 switch (cm_id_priv->id.state) {
 case 129:
 case 132:
  ib_cancel_mad(cm_id_priv->av.port->mad_agent, cm_id_priv->msg);
  break;
 case 131:
  if (cm_id_priv->id.lap_state == IB_CM_LAP_SENT ||
      cm_id_priv->id.lap_state == IB_CM_MRA_LAP_RCVD)
   ib_cancel_mad(cm_id_priv->av.port->mad_agent, cm_id_priv->msg);
  break;
 case 130:
  break;
 case 128:
  atomic_long_inc(&work->port->counter_group[CM_RECV_DUPLICATES].
    counter[CM_DREQ_COUNTER]);
  msg = cm_alloc_response_msg_no_ah(work->port, work->mad_recv_wc);
  if (IS_ERR(msg))
   goto unlock;

  cm_format_drep((struct cm_drep_msg *) msg->mad, cm_id_priv,
          cm_id_priv->private_data,
          cm_id_priv->private_data_len);
  spin_unlock_irq(&cm_id_priv->lock);

  if (cm_create_response_msg_ah(work->port, work->mad_recv_wc, msg) ||
      ib_post_send_mad(msg, ((void*)0)))
   cm_free_msg(msg);
  goto deref;
 case 133:
  atomic_long_inc(&work->port->counter_group[CM_RECV_DUPLICATES].
    counter[CM_DREQ_COUNTER]);
  goto unlock;
 default:
  goto unlock;
 }
 cm_id_priv->id.state = 133;
 cm_id_priv->tid = dreq_msg->hdr.tid;
 ret = atomic_inc_and_test(&cm_id_priv->work_count);
 if (!ret)
  list_add_tail(&work->list, &cm_id_priv->work_list);
 spin_unlock_irq(&cm_id_priv->lock);

 if (ret)
  cm_process_work(cm_id_priv, work);
 else
  cm_deref_id(cm_id_priv);
 return 0;

unlock: spin_unlock_irq(&cm_id_priv->lock);
deref: cm_deref_id(cm_id_priv);
 return -EINVAL;
}
