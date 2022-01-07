
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_hashtable {scalar_t__ ref_count; } ;
struct vmci_hash_entry {scalar_t__ ref_count; } ;


 int ASSERT (struct vmci_hashtable*) ;
 int VMCI_SUCCESS ;
 int VMCI_SUCCESS_ENTRY_DEAD ;
 int hashtable_unlink_entry (struct vmci_hashtable*,struct vmci_hashtable*) ;

__attribute__((used)) static int
vmci_hashtable_release_entry_locked(struct vmci_hashtable *table,
    struct vmci_hash_entry *entry)
{
 int result = VMCI_SUCCESS;

 ASSERT(table);
 ASSERT(entry);

 entry->ref_count--;

 if (entry->ref_count == 0) {
  hashtable_unlink_entry(table, entry);
  result = VMCI_SUCCESS_ENTRY_DEAD;
 }

 return (result);
}
