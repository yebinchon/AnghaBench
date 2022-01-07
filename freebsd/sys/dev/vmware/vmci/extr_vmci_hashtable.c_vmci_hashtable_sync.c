
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_hashtable {int lock; } ;


 int ASSERT (struct vmci_hashtable*) ;
 int vmci_grab_lock_bh (int *) ;
 int vmci_release_lock_bh (int *) ;

void
vmci_hashtable_sync(struct vmci_hashtable *table)
{

 ASSERT(table);
 vmci_grab_lock_bh(&table->lock);
 vmci_release_lock_bh(&table->lock);
}
