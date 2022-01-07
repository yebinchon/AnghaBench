
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_resource {int hash_entry; } ;


 int ASSERT (struct vmci_resource*) ;
 int VMCI_SUCCESS_ENTRY_DEAD ;
 int resource_table ;
 int vmci_hashtable_release_entry (int ,int *) ;
 int vmci_resource_do_remove (struct vmci_resource*) ;

int
vmci_resource_release(struct vmci_resource *resource)
{
 int result;

 ASSERT(resource);

 result = vmci_hashtable_release_entry(resource_table,
     &resource->hash_entry);
 if (result == VMCI_SUCCESS_ENTRY_DEAD)
  vmci_resource_do_remove(resource);





 return (result);
}
