
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmci_handle {int dummy; } ;
struct TYPE_2__ {int payload_size; int src; int dst; } ;
struct vmci_queue_pair_detach_msg {struct vmci_handle handle; TYPE_1__ hdr; } ;
struct vmci_datagram {int dummy; } ;
typedef int handle ;


 int VMCI_ANON_SRC_HANDLE ;
 int VMCI_HYPERVISOR_CONTEXT_ID ;
 int VMCI_MAKE_HANDLE (int ,int ) ;
 int VMCI_QUEUEPAIR_DETACH ;
 int vmci_send_datagram (struct vmci_datagram*) ;

int
vmci_queue_pair_detach_hypercall(struct vmci_handle handle)
{
 struct vmci_queue_pair_detach_msg detach_msg;

 detach_msg.hdr.dst = VMCI_MAKE_HANDLE(VMCI_HYPERVISOR_CONTEXT_ID,
     VMCI_QUEUEPAIR_DETACH);
 detach_msg.hdr.src = VMCI_ANON_SRC_HANDLE;
 detach_msg.hdr.payload_size = sizeof(handle);
 detach_msg.handle = handle;

 return (vmci_send_datagram((struct vmci_datagram *)&detach_msg));
}
