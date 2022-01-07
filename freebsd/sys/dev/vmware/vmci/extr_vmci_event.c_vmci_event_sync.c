
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subscriber_lock ;
 int vmci_grab_lock_bh (int *) ;
 int vmci_release_lock_bh (int *) ;

void
vmci_event_sync(void)
{

 vmci_grab_lock_bh(&subscriber_lock);
 vmci_release_lock_bh(&subscriber_lock);
}
