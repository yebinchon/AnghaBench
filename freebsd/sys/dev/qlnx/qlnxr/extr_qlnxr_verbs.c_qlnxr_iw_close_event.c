
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlnxr_iw_ep {TYPE_1__* cm_id; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int * ha; } ;
struct ecore_iwarp_cm_event_params {int dummy; } ;
typedef int qlnx_host_t ;
struct TYPE_2__ {int (* rem_ref ) (TYPE_1__*) ;} ;


 int IW_CM_EVENT_CLOSE ;
 int QL_DPRINT12 (int *,char*) ;
 int qlnxr_iw_issue_event (void*,struct ecore_iwarp_cm_event_params*,int ,char*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void
qlnxr_iw_close_event(void *context,
  struct ecore_iwarp_cm_event_params *params)
{
 struct qlnxr_iw_ep *ep = (struct qlnxr_iw_ep *)context;
 struct qlnxr_dev *dev = ep->dev;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 if (ep->cm_id) {
  qlnxr_iw_issue_event(context,
        params,
        IW_CM_EVENT_CLOSE,
        "IW_CM_EVENT_EVENT_CLOSE");
  ep->cm_id->rem_ref(ep->cm_id);
  ep->cm_id = ((void*)0);
 }

 QL_DPRINT12(ha, "exit\n");

 return;
}
