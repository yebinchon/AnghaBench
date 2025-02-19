
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_doorbell_entry {int resource; } ;


 int ASSERT (struct vmci_doorbell_entry*) ;
 int vmci_resource_release (int *) ;

__attribute__((used)) static int
vmci_doorbell_release_cb(void *client_data)
{
 struct vmci_doorbell_entry *entry;

 entry = (struct vmci_doorbell_entry *)client_data;
 ASSERT(entry);
 vmci_resource_release(&entry->resource);
 return (0);
}
