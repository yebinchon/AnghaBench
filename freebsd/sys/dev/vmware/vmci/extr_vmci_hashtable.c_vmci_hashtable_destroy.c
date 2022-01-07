
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_hashtable {int size; int lock; struct vmci_hashtable* entries; } ;


 int ASSERT (struct vmci_hashtable*) ;
 int vmci_cleanup_lock (int *) ;
 int vmci_free_kernel_mem (struct vmci_hashtable*,int) ;
 int vmci_grab_lock_bh (int *) ;
 int vmci_release_lock_bh (int *) ;

void
vmci_hashtable_destroy(struct vmci_hashtable *table)
{

 ASSERT(table);

 vmci_grab_lock_bh(&table->lock);
 vmci_free_kernel_mem(table->entries, sizeof(*table->entries) *
     table->size);
 table->entries = ((void*)0);
 vmci_release_lock_bh(&table->lock);
 vmci_cleanup_lock(&table->lock);
 vmci_free_kernel_mem(table, sizeof(*table));
}
