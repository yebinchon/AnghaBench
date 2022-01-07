
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_handle {int dummy; } ;


 int VMCI_ERROR_INVALID_ARGS ;
 scalar_t__ VMCI_HANDLE_INVALID (struct vmci_handle) ;
 int vmci_queue_pair_detach_guest_work (struct vmci_handle) ;

int
vmci_queue_pair_detach(struct vmci_handle handle)
{

 if (VMCI_HANDLE_INVALID(handle))
  return (VMCI_ERROR_INVALID_ARGS);

 return (vmci_queue_pair_detach_guest_work(handle));
}
