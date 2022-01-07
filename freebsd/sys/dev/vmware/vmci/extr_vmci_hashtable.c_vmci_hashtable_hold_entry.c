
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_hashtable {int lock; int ref_count; } ;
struct vmci_hash_entry {int lock; int ref_count; } ;


 int ASSERT (struct vmci_hashtable*) ;
 int vmci_grab_lock_bh (int *) ;
 int vmci_release_lock_bh (int *) ;

void
vmci_hashtable_hold_entry(struct vmci_hashtable *table,
    struct vmci_hash_entry *entry)
{

 ASSERT(table);
 ASSERT(entry);

 vmci_grab_lock_bh(&table->lock);
 entry->ref_count++;
 vmci_release_lock_bh(&table->lock);
}
