
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlnxr_iw_ep {TYPE_2__* cm_id; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int * ha; } ;
struct iw_cm_event {int event; int status; int private_data_len; void* private_data; int ird; int ord; } ;
struct ecore_iwarp_cm_event_params {TYPE_1__* cm_info; int status; } ;
typedef int qlnx_host_t ;
typedef int event ;
typedef enum iw_cm_event_type { ____Placeholder_iw_cm_event_type } iw_cm_event_type ;
struct TYPE_4__ {int (* event_handler ) (TYPE_2__*,struct iw_cm_event*) ;} ;
struct TYPE_3__ {scalar_t__ private_data; int private_data_len; int ord; int ird; } ;


 int QL_DPRINT11 (int *,char*) ;
 int QL_DPRINT12 (int *,char*,...) ;
 int memset (struct iw_cm_event*,int ,int) ;
 int stub1 (TYPE_2__*,struct iw_cm_event*) ;

__attribute__((used)) static void
qlnxr_iw_issue_event(void *context,
  struct ecore_iwarp_cm_event_params *params,
  enum iw_cm_event_type event_type,
  char *str)
{
 struct qlnxr_iw_ep *ep = (struct qlnxr_iw_ep *)context;
 struct qlnxr_dev *dev = ep->dev;
 struct iw_cm_event event;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 memset(&event, 0, sizeof(event));
 event.status = params->status;
 event.event = event_type;

 if (params->cm_info != ((void*)0)) {







  event.private_data_len = params->cm_info->private_data_len;
  event.private_data = (void *)params->cm_info->private_data;
  QL_DPRINT12(ha, "private_data_len=[%d] \n",
   event.private_data_len);
 }

 QL_DPRINT12(ha, "event=[%d] %s\n", event.event, str);
 QL_DPRINT12(ha, "status=[%d] \n", event.status);

 if (ep) {
  if (ep->cm_id)
   ep->cm_id->event_handler(ep->cm_id, &event);
  else
   QL_DPRINT11(ha, "ep->cm_id == NULL \n");
 } else {
  QL_DPRINT11(ha, "ep == NULL \n");
 }

 QL_DPRINT12(ha, "exit\n");

 return;
}
