
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VMCI_EVENT_MAX ;
 int * subscriber_array ;
 int subscriber_lock ;
 int vmci_init_lock (int *,char*) ;
 int vmci_list_init (int *) ;

int
vmci_event_init(void)
{
 int i;

 for (i = 0; i < VMCI_EVENT_MAX; i++)
  vmci_list_init(&subscriber_array[i]);

 return (vmci_init_lock(&subscriber_lock, "VMCI Event subscriber lock"));
}
