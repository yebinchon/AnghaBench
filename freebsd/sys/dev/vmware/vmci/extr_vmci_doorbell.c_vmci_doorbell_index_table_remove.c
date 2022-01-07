
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmci_doorbell_entry {int idx; int resource; } ;
struct TYPE_2__ {int lock; } ;


 int ASSERT (struct vmci_doorbell_entry*) ;
 int idx_list_item ;
 int last_notify_idx_released ;
 int max_notify_idx ;
 int notify_idx_count ;
 int vmci_doorbell_index_table_find (int) ;
 TYPE_1__ vmci_doorbell_it ;
 int vmci_grab_lock_bh (int *) ;
 int vmci_list_remove (struct vmci_doorbell_entry*,int ) ;
 int vmci_release_lock_bh (int *) ;
 int vmci_resource_release (int *) ;

__attribute__((used)) static void
vmci_doorbell_index_table_remove(struct vmci_doorbell_entry *entry)
{
 ASSERT(entry);

 vmci_grab_lock_bh(&vmci_doorbell_it.lock);

 vmci_list_remove(entry, idx_list_item);

 notify_idx_count--;
 if (entry->idx == max_notify_idx - 1) {







  while (max_notify_idx > 0 &&
      !vmci_doorbell_index_table_find(max_notify_idx - 1))
   max_notify_idx--;
 }
 last_notify_idx_released = entry->idx;

 vmci_release_lock_bh(&vmci_doorbell_it.lock);

 vmci_resource_release(&entry->resource);
}
