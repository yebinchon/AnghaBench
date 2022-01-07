
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmci_resource_type ;
struct vmci_resource {int hash_entry; } ;
struct vmci_handle {int dummy; } ;


 int resource_table ;
 int vmci_hashtable_remove_entry (int ,int *) ;
 struct vmci_resource* vmci_resource_get (struct vmci_handle,int ) ;
 int vmci_resource_release (struct vmci_resource*) ;

void
vmci_resource_remove(struct vmci_handle resource_handle,
    vmci_resource_type resource_type)
{
 struct vmci_resource *resource;

 resource = vmci_resource_get(resource_handle, resource_type);
 if (resource == ((void*)0))
  return;


 vmci_hashtable_remove_entry(resource_table, &resource->hash_entry);

 vmci_resource_release(resource);

}
