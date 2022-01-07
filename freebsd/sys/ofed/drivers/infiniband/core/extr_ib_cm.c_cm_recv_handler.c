
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t u16 ;
struct ib_sa_path_rec {int dummy; } ;
struct ib_mad_send_buf {int dummy; } ;
struct TYPE_10__ {TYPE_2__* mad; } ;
struct ib_mad_recv_wc {TYPE_3__ recv_buf; } ;
struct ib_mad_agent {struct cm_port* context; } ;
struct TYPE_12__ {int event; } ;
struct cm_work {int work; struct cm_port* port; struct ib_mad_recv_wc* mad_recv_wc; TYPE_5__ cm_event; } ;
struct cm_req_msg {int alt_local_lid; } ;
struct cm_port {TYPE_6__* cm_dev; TYPE_4__* counter_group; } ;
typedef enum ib_cm_event_type { ____Placeholder_ib_cm_event_type } ib_cm_event_type ;
struct TYPE_14__ {int lock; int wq; } ;
struct TYPE_13__ {int going_down; } ;
struct TYPE_11__ {int * counter; } ;
struct TYPE_8__ {int attr_id; } ;
struct TYPE_9__ {TYPE_1__ mad_hdr; } ;



 size_t CM_ATTR_ID_OFFSET ;




 size_t CM_RECV ;






 int GFP_KERNEL ;
 int IB_CM_APR_RECEIVED ;
 int IB_CM_DREP_RECEIVED ;
 int IB_CM_DREQ_RECEIVED ;
 int IB_CM_LAP_RECEIVED ;
 int IB_CM_MRA_RECEIVED ;
 int IB_CM_REJ_RECEIVED ;
 int IB_CM_REP_RECEIVED ;
 int IB_CM_REQ_RECEIVED ;
 int IB_CM_RTU_RECEIVED ;
 int IB_CM_SIDR_REP_RECEIVED ;
 int IB_CM_SIDR_REQ_RECEIVED ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int atomic_long_inc (int *) ;
 size_t be16_to_cpu (int) ;
 TYPE_7__ cm ;
 int cm_work_handler ;
 int ib_free_recv_mad (struct ib_mad_recv_wc*) ;
 int kfree (struct cm_work*) ;
 struct cm_work* kmalloc (int,int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void cm_recv_handler(struct ib_mad_agent *mad_agent,
       struct ib_mad_send_buf *send_buf,
       struct ib_mad_recv_wc *mad_recv_wc)
{
 struct cm_port *port = mad_agent->context;
 struct cm_work *work;
 enum ib_cm_event_type event;
 u16 attr_id;
 int paths = 0;
 int going_down = 0;

 switch (mad_recv_wc->recv_buf.mad->mad_hdr.attr_id) {
 case 131:
  paths = 1 + (((struct cm_req_msg *) mad_recv_wc->recv_buf.mad)->
          alt_local_lid != 0);
  event = IB_CM_REQ_RECEIVED;
  break;
 case 134:
  event = IB_CM_MRA_RECEIVED;
  break;
 case 133:
  event = IB_CM_REJ_RECEIVED;
  break;
 case 132:
  event = IB_CM_REP_RECEIVED;
  break;
 case 130:
  event = IB_CM_RTU_RECEIVED;
  break;
 case 136:
  event = IB_CM_DREQ_RECEIVED;
  break;
 case 137:
  event = IB_CM_DREP_RECEIVED;
  break;
 case 128:
  event = IB_CM_SIDR_REQ_RECEIVED;
  break;
 case 129:
  event = IB_CM_SIDR_REP_RECEIVED;
  break;
 case 135:
  paths = 1;
  event = IB_CM_LAP_RECEIVED;
  break;
 case 138:
  event = IB_CM_APR_RECEIVED;
  break;
 default:
  ib_free_recv_mad(mad_recv_wc);
  return;
 }

 attr_id = be16_to_cpu(mad_recv_wc->recv_buf.mad->mad_hdr.attr_id);
 atomic_long_inc(&port->counter_group[CM_RECV].
   counter[attr_id - CM_ATTR_ID_OFFSET]);

 work = kmalloc(sizeof *work + sizeof(struct ib_sa_path_rec) * paths,
         GFP_KERNEL);
 if (!work) {
  ib_free_recv_mad(mad_recv_wc);
  return;
 }

 INIT_DELAYED_WORK(&work->work, cm_work_handler);
 work->cm_event.event = event;
 work->mad_recv_wc = mad_recv_wc;
 work->port = port;


 spin_lock_irq(&cm.lock);
 if (!port->cm_dev->going_down)
  queue_delayed_work(cm.wq, &work->work, 0);
 else
  going_down = 1;
 spin_unlock_irq(&cm.lock);

 if (going_down) {
  kfree(work);
  ib_free_recv_mad(mad_recv_wc);
 }
}
