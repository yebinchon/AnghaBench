
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_subscription {int callback_data; int id; int (* callback ) (int ,struct vmci_event_data*,int ) ;scalar_t__ event_payload; struct vmci_subscription* sub; } ;
struct vmci_event_data {int dummy; } ;
struct vmci_delayed_event_info {int callback_data; int id; int (* callback ) (int ,struct vmci_event_data*,int ) ;scalar_t__ event_payload; struct vmci_delayed_event_info* sub; } ;


 int ASSERT (struct vmci_subscription*) ;
 int stub1 (int ,struct vmci_event_data*,int ) ;
 int subscriber_lock ;
 int vmci_event_release (struct vmci_subscription*) ;
 int vmci_free_kernel_mem (struct vmci_subscription*,int) ;
 int vmci_grab_lock_bh (int *) ;
 int vmci_release_lock_bh (int *) ;

__attribute__((used)) static void
vmci_event_delayed_dispatch_cb(void *data)
{
 struct vmci_delayed_event_info *event_info;
 struct vmci_subscription *sub;
 struct vmci_event_data *ed;

 event_info = (struct vmci_delayed_event_info *)data;

 ASSERT(event_info);
 ASSERT(event_info->sub);

 sub = event_info->sub;
 ed = (struct vmci_event_data *)event_info->event_payload;

 sub->callback(sub->id, ed, sub->callback_data);

 vmci_grab_lock_bh(&subscriber_lock);
 vmci_event_release(sub);
 vmci_release_lock_bh(&subscriber_lock);

 vmci_free_kernel_mem(event_info, sizeof(*event_info));
}
