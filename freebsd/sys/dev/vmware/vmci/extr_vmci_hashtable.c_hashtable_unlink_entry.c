
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_hashtable {struct vmci_hash_entry** entries; int size; } ;
struct vmci_hash_entry {struct vmci_hash_entry* next; int handle; } ;


 int ASSERT (int) ;
 int VMCI_ERROR_NOT_FOUND ;
 scalar_t__ VMCI_HANDLE_EQUAL (int ,int ) ;
 int VMCI_HASHTABLE_HASH (int ,int ) ;
 int VMCI_SUCCESS ;

__attribute__((used)) static int
hashtable_unlink_entry(struct vmci_hashtable *table,
    struct vmci_hash_entry *entry)
{
 int result;
 struct vmci_hash_entry *prev, *cur;
 int idx;

 idx = VMCI_HASHTABLE_HASH(entry->handle, table->size);

 prev = ((void*)0);
 cur = table->entries[idx];
 while (1) {
  if (cur == ((void*)0)) {
   result = VMCI_ERROR_NOT_FOUND;
   break;
  }
  if (VMCI_HANDLE_EQUAL(cur->handle, entry->handle)) {
   ASSERT(cur == entry);


   if (prev)
    prev->next = cur->next;
   else
    table->entries[idx] = cur->next;
   cur->next = ((void*)0);
   result = VMCI_SUCCESS;
   break;
  }
  prev = cur;
  cur = cur->next;
 }
 return (result);
}
