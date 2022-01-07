
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int resource_id_lock ;
 scalar_t__ resource_table ;
 int vmci_cleanup_lock (int *) ;
 int vmci_hashtable_destroy (scalar_t__) ;

void
vmci_resource_exit(void)
{


 vmci_cleanup_lock(&resource_id_lock);

 if (resource_table)
  vmci_hashtable_destroy(resource_table);
}
