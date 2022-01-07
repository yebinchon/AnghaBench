
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_hashtable {int lock; } ;
struct vmci_hash_entry {int dummy; } ;
struct vmci_handle {int dummy; } ;


 int ASSERT (struct vmci_hashtable*) ;
 scalar_t__ VMCI_HANDLE_EQUAL (struct vmci_handle,int ) ;
 int VMCI_INVALID_HANDLE ;
 int vmci_grab_lock_bh (int *) ;
 struct vmci_hash_entry* vmci_hashtable_get_entry_locked (struct vmci_hashtable*,struct vmci_handle) ;
 int vmci_release_lock_bh (int *) ;

struct vmci_hash_entry *
vmci_hashtable_get_entry(struct vmci_hashtable *table,
    struct vmci_handle handle)
{
 struct vmci_hash_entry *entry;

 if (VMCI_HANDLE_EQUAL(handle, VMCI_INVALID_HANDLE))
  return (((void*)0));

 ASSERT(table);

 vmci_grab_lock_bh(&table->lock);
 entry = vmci_hashtable_get_entry_locked(table, handle);
 vmci_release_lock_bh(&table->lock);

 return (entry);
}
