
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vmci_doorbell_entry {int idx; int resource; } ;
struct TYPE_2__ {int lock; int * entries; } ;


 int ASSERT (struct vmci_doorbell_entry*) ;
 int PAGE_SIZE ;
 int VMCI_DOORBELL_HASH (int) ;
 int idx_list_item ;
 int last_notify_idx_released ;
 int last_notify_idx_reserved ;
 int max_notify_idx ;
 int notify_idx_count ;
 int vmci_doorbell_index_table_find (int) ;
 TYPE_1__ vmci_doorbell_it ;
 int vmci_grab_lock_bh (int *) ;
 int vmci_list_insert (int *,struct vmci_doorbell_entry*,int ) ;
 int vmci_release_lock_bh (int *) ;
 int vmci_resource_hold (int *) ;

__attribute__((used)) static void
vmci_doorbell_index_table_add(struct vmci_doorbell_entry *entry)
{
 uint32_t bucket;
 uint32_t new_notify_idx;

 ASSERT(entry);

 vmci_resource_hold(&entry->resource);

 vmci_grab_lock_bh(&vmci_doorbell_it.lock);
 if (max_notify_idx < PAGE_SIZE || notify_idx_count < PAGE_SIZE) {
  if (last_notify_idx_released < max_notify_idx &&
      !vmci_doorbell_index_table_find(last_notify_idx_released)) {
   new_notify_idx = last_notify_idx_released;
   last_notify_idx_released = PAGE_SIZE;
  } else {
   bool reused = 0;
   new_notify_idx = last_notify_idx_reserved;
   if (notify_idx_count + 1 < max_notify_idx) {
    do {
     if (!vmci_doorbell_index_table_find(
         new_notify_idx)) {
      reused = 1;
      break;
     }
     new_notify_idx = (new_notify_idx + 1) %
         max_notify_idx;
    } while (new_notify_idx !=
        last_notify_idx_released);
   }
   if (!reused) {
    new_notify_idx = max_notify_idx;
    max_notify_idx++;
   }
  }
 } else {
  new_notify_idx = (last_notify_idx_reserved + 1) % PAGE_SIZE;
 }
 last_notify_idx_reserved = new_notify_idx;
 notify_idx_count++;

 entry->idx = new_notify_idx;
 bucket = VMCI_DOORBELL_HASH(entry->idx);
 vmci_list_insert(&vmci_doorbell_it.entries[bucket], entry,
     idx_list_item);

 vmci_release_lock_bh(&vmci_doorbell_it.lock);
}
