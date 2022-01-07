
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_hashtable {int size; struct vmci_hashtable* entries; int lock; } ;


 int VMCI_MEMORY_NORMAL ;
 scalar_t__ VMCI_SUCCESS ;
 int memset (struct vmci_hashtable*,int ,int) ;
 void* vmci_alloc_kernel_mem (int,int ) ;
 int vmci_free_kernel_mem (struct vmci_hashtable*,int) ;
 scalar_t__ vmci_init_lock (int *,char*) ;

struct vmci_hashtable *
vmci_hashtable_create(int size)
{
 struct vmci_hashtable *table;

 table = vmci_alloc_kernel_mem(sizeof(*table),
     VMCI_MEMORY_NORMAL);
 if (table == ((void*)0))
  return (((void*)0));
 memset(table, 0, sizeof(*table));

 table->entries = vmci_alloc_kernel_mem(sizeof(*table->entries) * size,
     VMCI_MEMORY_NORMAL);
 if (table->entries == ((void*)0)) {
  vmci_free_kernel_mem(table, sizeof(*table));
  return (((void*)0));
 }
 memset(table->entries, 0, sizeof(*table->entries) * size);
 table->size = size;
 if (vmci_init_lock(&table->lock, "VMCI Hashtable lock") <
     VMCI_SUCCESS) {
  vmci_free_kernel_mem(table->entries, sizeof(*table->entries) * size);
  vmci_free_kernel_mem(table, sizeof(*table));
  return (((void*)0));
 }

 return (table);
}
