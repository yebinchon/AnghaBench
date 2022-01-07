
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_resource {int hash_entry; } ;


 int ASSERT (struct vmci_resource*) ;
 int resource_table ;
 int vmci_hashtable_hold_entry (int ,int *) ;

void
vmci_resource_hold(struct vmci_resource *resource)
{

 ASSERT(resource);
 vmci_hashtable_hold_entry(resource_table, &resource->hash_entry);
}
