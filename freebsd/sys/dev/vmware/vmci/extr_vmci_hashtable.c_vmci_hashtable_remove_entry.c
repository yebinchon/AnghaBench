
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_hashtable {scalar_t__ ref_count; int lock; } ;
struct vmci_hash_entry {scalar_t__ ref_count; int lock; } ;


 int ASSERT (struct vmci_hashtable*) ;
 int VMCI_SUCCESS ;
 int VMCI_SUCCESS_ENTRY_DEAD ;
 int hashtable_unlink_entry (struct vmci_hashtable*,struct vmci_hashtable*) ;
 int vmci_grab_lock_bh (int *) ;
 int vmci_release_lock_bh (int *) ;

int
vmci_hashtable_remove_entry(struct vmci_hashtable *table,
    struct vmci_hash_entry *entry)
{
 int result;

 ASSERT(table);
 ASSERT(entry);

 vmci_grab_lock_bh(&table->lock);


 result = hashtable_unlink_entry(table, entry);
 if (result != VMCI_SUCCESS) {

  goto done;
 }


 entry->ref_count--;
 if (entry->ref_count == 0) {
  result = VMCI_SUCCESS_ENTRY_DEAD;
  goto done;
 }

done:
 vmci_release_lock_bh(&table->lock);

 return (result);
}
