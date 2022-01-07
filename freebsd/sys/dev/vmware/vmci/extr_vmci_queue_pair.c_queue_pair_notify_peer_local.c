
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vmci_id ;
struct vmci_handle {int dummy; } ;
struct vmci_event_payload_qp {struct vmci_handle handle; int peer_id; } ;
struct TYPE_4__ {int event; } ;
struct TYPE_3__ {int payload_size; void* src; void* dst; } ;
struct vmci_event_msg {TYPE_2__ event_data; TYPE_1__ hdr; } ;
struct vmci_datagram {int dummy; } ;


 int VMCI_CONTEXT_RESOURCE_ID ;
 int VMCI_EVENT_HANDLER ;
 int VMCI_EVENT_QP_PEER_ATTACH ;
 int VMCI_EVENT_QP_PEER_DETACH ;
 int VMCI_HYPERVISOR_CONTEXT_ID ;
 void* VMCI_MAKE_HANDLE (int ,int ) ;
 int vmci_event_dispatch (struct vmci_datagram*) ;
 struct vmci_event_payload_qp* vmci_event_msg_payload (struct vmci_event_msg*) ;
 int vmci_get_context_id () ;

__attribute__((used)) static int
queue_pair_notify_peer_local(bool attach, struct vmci_handle handle)
{
 struct vmci_event_msg *e_msg;
 struct vmci_event_payload_qp *e_payload;

 vmci_id context_id;
 context_id = vmci_get_context_id();
 char buf[sizeof(*e_msg) + sizeof(*e_payload)];

 e_msg = (struct vmci_event_msg *)buf;
 e_payload = vmci_event_msg_payload(e_msg);

 e_msg->hdr.dst = VMCI_MAKE_HANDLE(context_id, VMCI_EVENT_HANDLER);
 e_msg->hdr.src = VMCI_MAKE_HANDLE(VMCI_HYPERVISOR_CONTEXT_ID,
     VMCI_CONTEXT_RESOURCE_ID);
 e_msg->hdr.payload_size = sizeof(*e_msg) + sizeof(*e_payload) -
     sizeof(e_msg->hdr);
 e_msg->event_data.event = attach ? VMCI_EVENT_QP_PEER_ATTACH :
     VMCI_EVENT_QP_PEER_DETACH;
 e_payload->peer_id = context_id;
 e_payload->handle = handle;

 return (vmci_event_dispatch((struct vmci_datagram *)e_msg));
}
