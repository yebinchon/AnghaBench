
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmci_id ;
struct vmci_subscription {int destroy_event; } ;


 int event_release_cb ;
 int subscriber_list_item ;
 int subscriber_lock ;
 int vmci_destroy_event (int *) ;
 struct vmci_subscription* vmci_event_find (int ) ;
 int vmci_event_release (struct vmci_subscription*) ;
 int vmci_grab_lock_bh (int *) ;
 int vmci_list_remove (struct vmci_subscription*,int ) ;
 int vmci_release_lock_bh (int *) ;
 int vmci_wait_on_event (int *,int ,struct vmci_subscription*) ;

__attribute__((used)) static struct vmci_subscription *
vmci_event_unregister_subscription(vmci_id sub_id)
{
 struct vmci_subscription *s;

 vmci_grab_lock_bh(&subscriber_lock);
 s = vmci_event_find(sub_id);
 if (s != ((void*)0)) {
  vmci_event_release(s);
  vmci_list_remove(s, subscriber_list_item);
 }
 vmci_release_lock_bh(&subscriber_lock);

 if (s != ((void*)0)) {
  vmci_wait_on_event(&s->destroy_event, event_release_cb, s);
  vmci_destroy_event(&s->destroy_event);
 }

 return (s);
}
