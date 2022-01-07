
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_doorbell_entry {int resource; int client_data; int (* notify_cb ) (int ) ;} ;


 int ASSERT (void*) ;
 int stub1 (int ) ;
 int vmci_resource_release (int *) ;

__attribute__((used)) static void
vmci_doorbell_delayed_dispatch_cb(void *data)
{
 struct vmci_doorbell_entry *entry = (struct vmci_doorbell_entry *)data;

 ASSERT(data);

 entry->notify_cb(entry->client_data);

 vmci_resource_release(&entry->resource);
}
