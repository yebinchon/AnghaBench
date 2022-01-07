
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmci_event ;


 int sema_post (int *) ;

void
vmci_signal_event(vmci_event *event)
{

 sema_post(event);
}
