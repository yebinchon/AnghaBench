
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {void* s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; void* sin_port; void* sin_family; } ;
struct qlnxr_iw_listener {TYPE_3__* cm_id; struct qlnxr_dev* dev; } ;
struct qlnxr_iw_ep {int ecore_context; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int * ha; } ;
struct iw_cm_event {int ird; int ord; scalar_t__ private_data_len; void* private_data; void* provider_data; int remote_addr; int local_addr; int status; int event; } ;
struct ecore_iwarp_cm_event_params {TYPE_2__* cm_info; int status; int ep_context; } ;
typedef int qlnx_host_t ;
typedef int event ;
struct TYPE_6__ {int (* event_handler ) (TYPE_3__*,struct iw_cm_event*) ;} ;
struct TYPE_5__ {int ird; int ord; scalar_t__ private_data_len; scalar_t__ private_data; int * remote_ip; int * local_ip; int remote_port; int local_port; int ip_version; } ;


 void* AF_INET ;
 int ECORE_TCP_IPV4 ;
 int GFP_ATOMIC ;
 int IW_CM_EVENT_CONNECT_REQUEST ;
 int QL_DPRINT11 (int *,char*,...) ;
 int QL_DPRINT12 (int *,char*) ;
 void* htonl (int ) ;
 void* htons (int ) ;
 struct qlnxr_iw_ep* kzalloc (int,int ) ;
 int memset (struct iw_cm_event*,int ,int) ;
 int stub1 (TYPE_3__*,struct iw_cm_event*) ;

__attribute__((used)) static void
qlnxr_iw_mpa_request(void *context,
 struct ecore_iwarp_cm_event_params *params)
{
 struct qlnxr_iw_listener *listener = (struct qlnxr_iw_listener *)context;
 struct qlnxr_dev *dev = listener->dev;
 struct qlnxr_iw_ep *ep;
 struct iw_cm_event event;
 struct sockaddr_in *laddr;
 struct sockaddr_in *raddr;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 if (params->cm_info->ip_version != ECORE_TCP_IPV4) {
  QL_DPRINT11(ha, "only IPv4 supported [0x%x]\n",
   params->cm_info->ip_version);
  return;
 }

 ep = kzalloc(sizeof(*ep), GFP_ATOMIC);

 if (!ep) {
  QL_DPRINT11(ha, "kzalloc{ep) failed\n");
  return;
 }

 ep->dev = dev;
 ep->ecore_context = params->ep_context;

 memset(&event, 0, sizeof(event));

 event.event = IW_CM_EVENT_CONNECT_REQUEST;
 event.status = params->status;

 laddr = (struct sockaddr_in *)&event.local_addr;
 raddr = (struct sockaddr_in *)&event.remote_addr;

 laddr->sin_family = AF_INET;
 raddr->sin_family = AF_INET;

 laddr->sin_port = htons(params->cm_info->local_port);
 raddr->sin_port = htons(params->cm_info->remote_port);

 laddr->sin_addr.s_addr = htonl(params->cm_info->local_ip[0]);
 raddr->sin_addr.s_addr = htonl(params->cm_info->remote_ip[0]);

 event.provider_data = (void *)ep;
 event.private_data = (void *)params->cm_info->private_data;
 event.private_data_len = (u8)params->cm_info->private_data_len;






 listener->cm_id->event_handler(listener->cm_id, &event);

 QL_DPRINT12(ha, "exit\n");

 return;
}
