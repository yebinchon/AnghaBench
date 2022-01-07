
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * private_data; } ;
struct cm_work {int list; TYPE_3__ cm_event; TYPE_2__* mad_recv_wc; } ;
struct TYPE_12__ {TYPE_5__* port; } ;
struct TYPE_10__ {scalar_t__ state; } ;
struct cm_id_private {int lock; int work_list; int work_count; int msg; TYPE_6__ av; TYPE_4__ id; } ;
struct cm_drep_msg {int private_data; int local_comm_id; int remote_comm_id; } ;
struct TYPE_11__ {int mad_agent; } ;
struct TYPE_7__ {scalar_t__ mad; } ;
struct TYPE_8__ {TYPE_1__ recv_buf; } ;


 int EINVAL ;
 scalar_t__ IB_CM_DREQ_RCVD ;
 scalar_t__ IB_CM_DREQ_SENT ;
 int atomic_inc_and_test (int *) ;
 struct cm_id_private* cm_acquire_id (int ,int ) ;
 int cm_deref_id (struct cm_id_private*) ;
 int cm_enter_timewait (struct cm_id_private*) ;
 int cm_process_work (struct cm_id_private*,struct cm_work*) ;
 int ib_cancel_mad (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int cm_drep_handler(struct cm_work *work)
{
 struct cm_id_private *cm_id_priv;
 struct cm_drep_msg *drep_msg;
 int ret;

 drep_msg = (struct cm_drep_msg *)work->mad_recv_wc->recv_buf.mad;
 cm_id_priv = cm_acquire_id(drep_msg->remote_comm_id,
       drep_msg->local_comm_id);
 if (!cm_id_priv)
  return -EINVAL;

 work->cm_event.private_data = &drep_msg->private_data;

 spin_lock_irq(&cm_id_priv->lock);
 if (cm_id_priv->id.state != IB_CM_DREQ_SENT &&
     cm_id_priv->id.state != IB_CM_DREQ_RCVD) {
  spin_unlock_irq(&cm_id_priv->lock);
  goto out;
 }
 cm_enter_timewait(cm_id_priv);

 ib_cancel_mad(cm_id_priv->av.port->mad_agent, cm_id_priv->msg);
 ret = atomic_inc_and_test(&cm_id_priv->work_count);
 if (!ret)
  list_add_tail(&work->list, &cm_id_priv->work_list);
 spin_unlock_irq(&cm_id_priv->lock);

 if (ret)
  cm_process_work(cm_id_priv, work);
 else
  cm_deref_id(cm_id_priv);
 return 0;
out:
 cm_deref_id(cm_id_priv);
 return -EINVAL;
}
