
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vmci_doorbell_exit () ;
 int vmci_event_exit () ;
 int vmci_resource_exit () ;

void
vmci_components_cleanup(void)
{

 vmci_doorbell_exit();
 vmci_event_exit();
 vmci_resource_exit();
}
