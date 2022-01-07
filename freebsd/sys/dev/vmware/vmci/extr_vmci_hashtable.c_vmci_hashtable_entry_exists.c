
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_hashtable {int lock; } ;
struct vmci_handle {int dummy; } ;


 int ASSERT (struct vmci_hashtable*) ;
 int vmci_grab_lock_bh (int *) ;
 int vmci_hashtable_entry_exists_locked (struct vmci_hashtable*,struct vmci_handle) ;
 int vmci_release_lock_bh (int *) ;

bool
vmci_hashtable_entry_exists(struct vmci_hashtable *table,
    struct vmci_handle handle)
{
 bool exists;

 ASSERT(table);

 vmci_grab_lock_bh(&table->lock);
 exists = vmci_hashtable_entry_exists_locked(table, handle);
 vmci_release_lock_bh(&table->lock);

 return (exists);
}
