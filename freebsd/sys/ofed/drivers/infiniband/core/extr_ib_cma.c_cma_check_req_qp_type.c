
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rdma_cm_id {scalar_t__ qp_type; } ;
struct TYPE_3__ {scalar_t__ qp_type; } ;
struct TYPE_4__ {TYPE_1__ req_rcvd; } ;
struct ib_cm_event {scalar_t__ event; TYPE_2__ param; } ;


 scalar_t__ IB_CM_REQ_RECEIVED ;
 scalar_t__ IB_CM_SIDR_REQ_RECEIVED ;
 scalar_t__ IB_QPT_UD ;

__attribute__((used)) static int cma_check_req_qp_type(struct rdma_cm_id *id, struct ib_cm_event *ib_event)
{
 return (((ib_event->event == IB_CM_REQ_RECEIVED) &&
   (ib_event->param.req_rcvd.qp_type == id->qp_type)) ||
  ((ib_event->event == IB_CM_SIDR_REQ_RECEIVED) &&
   (id->qp_type == IB_QPT_UD)) ||
  (!id->qp_type));
}
