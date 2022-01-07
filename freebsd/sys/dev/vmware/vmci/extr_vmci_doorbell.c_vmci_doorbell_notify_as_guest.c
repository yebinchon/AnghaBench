
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vmci_privilege_flags ;
struct vmci_handle {int dummy; } ;
struct TYPE_2__ {scalar_t__ payload_size; int src; int dst; } ;
struct vmci_doorbell_notify_msg {struct vmci_handle handle; TYPE_1__ hdr; } ;
struct vmci_datagram {int dummy; } ;
typedef int notify_msg ;


 int VMCI_ANON_SRC_HANDLE ;
 scalar_t__ VMCI_DG_HEADERSIZE ;
 int VMCI_DOORBELL_NOTIFY ;
 int VMCI_HYPERVISOR_CONTEXT_ID ;
 int VMCI_MAKE_HANDLE (int ,int ) ;
 int vmci_send_datagram (struct vmci_datagram*) ;

__attribute__((used)) static int
vmci_doorbell_notify_as_guest(struct vmci_handle handle,
    vmci_privilege_flags priv_flags)
{
 struct vmci_doorbell_notify_msg notify_msg;

 notify_msg.hdr.dst = VMCI_MAKE_HANDLE(VMCI_HYPERVISOR_CONTEXT_ID,
     VMCI_DOORBELL_NOTIFY);
 notify_msg.hdr.src = VMCI_ANON_SRC_HANDLE;
 notify_msg.hdr.payload_size = sizeof(notify_msg) - VMCI_DG_HEADERSIZE;
 notify_msg.handle = handle;

 return (vmci_send_datagram((struct vmci_datagram *)&notify_msg));
}
