
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmci_id ;
struct vmci_subscription {int dummy; } ;


 int VMCI_ERROR_NOT_FOUND ;
 int VMCI_SUCCESS ;
 struct vmci_subscription* vmci_event_unregister_subscription (int ) ;
 int vmci_free_kernel_mem (struct vmci_subscription*,int) ;

int
vmci_event_unsubscribe(vmci_id sub_id)
{
 struct vmci_subscription *s;





 s = vmci_event_unregister_subscription(sub_id);
 if (s == ((void*)0))
  return (VMCI_ERROR_NOT_FOUND);
 vmci_free_kernel_mem(s, sizeof(*s));

 return (VMCI_SUCCESS);
}
