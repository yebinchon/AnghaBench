
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int resource_table ;
 int vmci_hashtable_sync (int ) ;

void
vmci_resource_sync(void)
{

 vmci_hashtable_sync(resource_table);
}
