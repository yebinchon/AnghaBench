
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_handle {int dummy; } ;
struct vmci_hash_entry {scalar_t__ ref_count; struct vmci_handle handle; } ;


 int ASSERT (struct vmci_hash_entry*) ;

void
vmci_hashtable_init_entry(struct vmci_hash_entry *entry,
    struct vmci_handle handle)
{

 ASSERT(entry);
 entry->handle = handle;
 entry->ref_count = 0;
}
