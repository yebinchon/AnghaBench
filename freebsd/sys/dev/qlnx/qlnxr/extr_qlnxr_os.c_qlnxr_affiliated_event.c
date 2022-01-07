
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct regpair {int lo; scalar_t__ hi; } ;
struct ib_qp {int qp_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct qlnxr_qp {struct ib_qp ibqp; int sig; } ;
struct qlnxr_dev {int * ha; } ;
struct ib_cq {int cq_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct qlnxr_cq {struct ib_cq ibcq; int sig; } ;
struct TYPE_2__ {struct ib_qp* qp; struct ib_cq* cq; } ;
struct ib_event {TYPE_1__ element; int device; void* event; } ;
typedef int qlnx_host_t ;





 int EVENT_TYPE_NOT_DEFINED ;

 void* IB_EVENT_CQ_ERR ;
 void* IB_EVENT_QP_ACCESS_ERR ;
 void* IB_EVENT_QP_FATAL ;
 void* IB_EVENT_QP_REQ_ERR ;
 void* IB_EVENT_SQ_DRAINED ;
 int QLNXR_CQ_MAGIC_NUMBER ;
 int QLNXR_QP_MAGIC_NUMBER ;
 scalar_t__ QLNX_IS_IWARP (struct qlnxr_dev*) ;
 int QL_DPRINT11 (int *,char*,int,...) ;
 int QL_DPRINT12 (int *,char*,...) ;





 int stub1 (struct ib_event*,int ) ;
 int stub2 (struct ib_event*,int ) ;

void
qlnxr_affiliated_event(void *context, u8 e_code, void *fw_handle)
{





        struct qlnxr_dev *dev = (struct qlnxr_dev *)context;
        struct regpair *async_handle = (struct regpair *)fw_handle;
        u64 roceHandle64 = ((u64)async_handle->hi << 32) + async_handle->lo;
        struct qlnxr_cq *cq = (struct qlnxr_cq *)(uintptr_t)roceHandle64;
        struct qlnxr_qp *qp = (struct qlnxr_qp *)(uintptr_t)roceHandle64;
        u8 event_type = 0;
        struct ib_event event;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter context = %p e_code = 0x%x fw_handle = %p\n",
  context, e_code, fw_handle);

        if (QLNX_IS_IWARP(dev)) {
  switch (e_code) {

  case 136:
   event.event = IB_EVENT_CQ_ERR;
   event_type = 1;
   break;

  default:
   QL_DPRINT12(ha,
    "unsupported event %d on handle=%llx\n",
    e_code, roceHandle64);
   break;
  }
        } else {
  switch (e_code) {

  case 132:
   event.event = IB_EVENT_CQ_ERR;
   event_type = 1;
   break;

  case 128:
   event.event = IB_EVENT_SQ_DRAINED;
   event_type = 2;
   break;

  case 129:
   event.event = IB_EVENT_QP_FATAL;
   event_type = 2;
   break;

  case 130:
   event.event = IB_EVENT_QP_REQ_ERR;
   event_type = 2;
   break;

  case 131:
   event.event = IB_EVENT_QP_ACCESS_ERR;
   event_type = 2;
   break;
  default:
   QL_DPRINT12(ha,
    "unsupported event 0x%x on fw_handle = %p\n",
    e_code, fw_handle);
   break;
  }
 }

        switch (event_type) {

        case 1:
                if (cq && cq->sig == QLNXR_CQ_MAGIC_NUMBER) {
                        struct ib_cq *ibcq = &cq->ibcq;

                        if (ibcq->event_handler) {
                                event.device = ibcq->device;
                                event.element.cq = ibcq;
                                ibcq->event_handler(&event, ibcq->cq_context);
                        }
                } else {
   QL_DPRINT11(ha,
    "CQ event with invalid CQ pointer"
    " Handle = %llx\n", roceHandle64);
                }
  QL_DPRINT12(ha,
   "CQ event 0x%x on handle = %p\n", e_code, cq);
                break;

        case 2:
                if (qp && qp->sig == QLNXR_QP_MAGIC_NUMBER) {
                        struct ib_qp *ibqp = &qp->ibqp;

                        if (ibqp->event_handler) {
                                event.device = ibqp->device;
                                event.element.qp = ibqp;
                                ibqp->event_handler(&event, ibqp->qp_context);
                        }
                } else {
   QL_DPRINT11(ha,
    "QP event 0x%x with invalid QP pointer"
    " qp handle = %p\n",
    e_code, roceHandle64);
                }
  QL_DPRINT12(ha, "QP event 0x%x on qp handle = %p\n",
   e_code, qp);
                break;

        case 3:
                break;

        default:
                break;

 }

 QL_DPRINT12(ha, "exit\n");

 return;
}
