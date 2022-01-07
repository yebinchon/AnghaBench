
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmci_event ;


 int sema_init (int *,int ,char*) ;

void
vmci_create_event(vmci_event *event)
{

 sema_init(event, 0, "vmci_event");
}
