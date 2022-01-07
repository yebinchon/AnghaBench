
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_subscription {int dummy; } ;


 int ASSERT (struct vmci_subscription*) ;
 int subscriber_lock ;
 int vmci_event_release (struct vmci_subscription*) ;
 int vmci_grab_lock_bh (int *) ;
 int vmci_release_lock_bh (int *) ;

__attribute__((used)) static int
event_release_cb(void *client_data)
{
 struct vmci_subscription *sub = (struct vmci_subscription *)client_data;

 ASSERT(sub);

 vmci_grab_lock_bh(&subscriber_lock);
 vmci_event_release(sub);
 vmci_release_lock_bh(&subscriber_lock);

 return (0);
}
