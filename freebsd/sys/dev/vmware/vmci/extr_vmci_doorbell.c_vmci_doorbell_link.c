
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vmci_id ;
typedef int uint32_t ;
struct vmci_handle {int dummy; } ;
struct TYPE_2__ {scalar_t__ payload_size; int src; int dst; } ;
struct vmci_doorbell_link_msg {int notify_idx; struct vmci_handle handle; TYPE_1__ hdr; } ;
struct vmci_datagram {int dummy; } ;
typedef int link_msg ;


 int ASSERT (int) ;
 int VMCI_ANON_SRC_HANDLE ;
 scalar_t__ VMCI_DG_HEADERSIZE ;
 int VMCI_DOORBELL_LINK ;
 int VMCI_ERROR_UNAVAILABLE ;
 int VMCI_HANDLE_INVALID (struct vmci_handle) ;
 int VMCI_HYPERVISOR_CONTEXT_ID ;
 int VMCI_MAKE_HANDLE (int ,int ) ;
 int vmci_send_datagram (struct vmci_datagram*) ;

__attribute__((used)) static int
vmci_doorbell_link(struct vmci_handle handle, bool is_doorbell,
    uint32_t notify_idx)
{
 struct vmci_doorbell_link_msg link_msg;
 vmci_id resource_id;

 ASSERT(!VMCI_HANDLE_INVALID(handle));

 if (is_doorbell)
  resource_id = VMCI_DOORBELL_LINK;
 else {
  ASSERT(0);
  return (VMCI_ERROR_UNAVAILABLE);
 }

 link_msg.hdr.dst = VMCI_MAKE_HANDLE(VMCI_HYPERVISOR_CONTEXT_ID,
     resource_id);
 link_msg.hdr.src = VMCI_ANON_SRC_HANDLE;
 link_msg.hdr.payload_size = sizeof(link_msg) - VMCI_DG_HEADERSIZE;
 link_msg.handle = handle;
 link_msg.notify_idx = notify_idx;

 return (vmci_send_datagram((struct vmci_datagram *)&link_msg));
}
