
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_qpair {int flags; int event; int handle; } ;


 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_QPFLAG_LOCAL ;
 int vmci_destroy_event (int *) ;
 int vmci_free_kernel_mem (struct vmci_qpair*,int) ;
 int vmci_queue_pair_detach (int ) ;

int
vmci_qpair_detach(struct vmci_qpair **qpair)
{
 struct vmci_qpair *old_qpair;
 int result;

 if (!qpair || !(*qpair))
  return (VMCI_ERROR_INVALID_ARGS);

 old_qpair = *qpair;
 result = vmci_queue_pair_detach(old_qpair->handle);
 if (old_qpair->flags & VMCI_QPFLAG_LOCAL)
  vmci_destroy_event(&old_qpair->event);

 vmci_free_kernel_mem(old_qpair, sizeof(*old_qpair));
 *qpair = ((void*)0);

 return (result);
}
