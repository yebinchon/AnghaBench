
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vmci_id ;
typedef int unlink_msg ;
struct vmci_handle {int dummy; } ;
struct TYPE_2__ {scalar_t__ payload_size; int src; int dst; } ;
struct vmci_doorbell_unlink_msg {struct vmci_handle handle; TYPE_1__ hdr; } ;
struct vmci_datagram {int dummy; } ;


 int ASSERT (int) ;
 int VMCI_ANON_SRC_HANDLE ;
 scalar_t__ VMCI_DG_HEADERSIZE ;
 int VMCI_DOORBELL_UNLINK ;
 int VMCI_ERROR_UNAVAILABLE ;
 int VMCI_HANDLE_INVALID (struct vmci_handle) ;
 int VMCI_HYPERVISOR_CONTEXT_ID ;
 int VMCI_MAKE_HANDLE (int ,int ) ;
 int vmci_send_datagram (struct vmci_datagram*) ;

__attribute__((used)) static int
vmci_doorbell_unlink(struct vmci_handle handle, bool is_doorbell)
{
 struct vmci_doorbell_unlink_msg unlink_msg;
 vmci_id resource_id;

 ASSERT(!VMCI_HANDLE_INVALID(handle));

 if (is_doorbell)
  resource_id = VMCI_DOORBELL_UNLINK;
 else {
  ASSERT(0);
  return (VMCI_ERROR_UNAVAILABLE);
 }

 unlink_msg.hdr.dst = VMCI_MAKE_HANDLE(VMCI_HYPERVISOR_CONTEXT_ID,
     resource_id);
 unlink_msg.hdr.src = VMCI_ANON_SRC_HANDLE;
 unlink_msg.hdr.payload_size = sizeof(unlink_msg) - VMCI_DG_HEADERSIZE;
 unlink_msg.handle = handle;

 return (vmci_send_datagram((struct vmci_datagram *)&unlink_msg));
}
