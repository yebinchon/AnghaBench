
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_core_srq {int srqn; } ;
struct ib_srq {int srq_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct TYPE_3__ {struct ib_srq* srq; } ;
struct ib_event {int event; TYPE_1__ element; int device; } ;
struct TYPE_4__ {struct ib_srq ibsrq; } ;


 int IB_EVENT_SRQ_ERR ;
 int IB_EVENT_SRQ_LIMIT_REACHED ;


 int pr_warn (char*,int,int ) ;
 int stub1 (struct ib_event*,int ) ;
 TYPE_2__* to_mibsrq (struct mlx5_core_srq*) ;

__attribute__((used)) static void mlx5_ib_srq_event(struct mlx5_core_srq *srq, int type)
{
 struct ib_event event;
 struct ib_srq *ibsrq = &to_mibsrq(srq)->ibsrq;

 if (ibsrq->event_handler) {
  event.device = ibsrq->device;
  event.element.srq = ibsrq;
  switch (type) {
  case 128:
   event.event = IB_EVENT_SRQ_LIMIT_REACHED;
   break;
  case 129:
   event.event = IB_EVENT_SRQ_ERR;
   break;
  default:
   pr_warn("mlx5_ib: Unexpected event type %d on SRQ %06x\n",
    type, srq->srqn);
   return;
  }

  ibsrq->event_handler(&event, ibsrq->srq_context);
 }
}
