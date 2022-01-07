
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* vmci_event_release_cb ) (void*) ;
typedef int vmci_event ;


 int sema_wait (int *) ;

void
vmci_wait_on_event(vmci_event *event, vmci_event_release_cb release_cb,
    void *client_data)
{

 release_cb(client_data);
 sema_wait(event);
}
