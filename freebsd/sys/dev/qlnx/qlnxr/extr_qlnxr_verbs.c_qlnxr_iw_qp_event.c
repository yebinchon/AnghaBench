
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlnxr_iw_ep {TYPE_1__* qp; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int * ha; } ;
struct ib_qp {int qp_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct TYPE_4__ {struct ib_qp* qp; } ;
struct ib_event {int event; TYPE_2__ element; int device; } ;
struct ecore_iwarp_cm_event_params {int event; } ;
typedef int qlnx_host_t ;
typedef enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;
struct TYPE_3__ {struct ib_qp ibqp; } ;


 int QL_DPRINT12 (int *,char*,void*,int ,char*,int (*) (struct ib_event*,int )) ;
 int stub1 (struct ib_event*,int ) ;

void
qlnxr_iw_qp_event(void *context,
 struct ecore_iwarp_cm_event_params *params,
 enum ib_event_type ib_event,
 char *str)
{
        struct qlnxr_iw_ep *ep = (struct qlnxr_iw_ep *)context;
        struct qlnxr_dev *dev = ep->dev;
        struct ib_qp *ibqp = &(ep->qp->ibqp);
        struct ib_event event;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha,
  "[context, event, event_handler] = [%p, 0x%x, %s, %p] enter\n",
  context, params->event, str, ibqp->event_handler);

        if (ibqp->event_handler) {
                event.event = ib_event;
                event.device = ibqp->device;
                event.element.qp = ibqp;
                ibqp->event_handler(&event, ibqp->qp_context);
        }

 return;
}
