
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_hashtable {int lock; } ;
struct vmci_hash_entry {int dummy; } ;


 int ASSERT (struct vmci_hashtable*) ;
 int vmci_grab_lock_bh (int *) ;
 int vmci_hashtable_release_entry_locked (struct vmci_hashtable*,struct vmci_hash_entry*) ;
 int vmci_release_lock_bh (int *) ;

int
vmci_hashtable_release_entry(struct vmci_hashtable *table,
    struct vmci_hash_entry *entry)
{
 int result;

 ASSERT(table);
 vmci_grab_lock_bh(&table->lock);
 result = vmci_hashtable_release_entry_locked(table, entry);
 vmci_release_lock_bh(&table->lock);

 return (result);
}
