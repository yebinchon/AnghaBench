
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_doorbell_entry {int destroy_event; } ;


 int ASSERT (struct vmci_doorbell_entry*) ;
 int vmci_signal_event (int *) ;

__attribute__((used)) static void
vmci_doorbell_free_cb(void *client_data)
{
 struct vmci_doorbell_entry *entry;

 entry = (struct vmci_doorbell_entry *)client_data;
 ASSERT(entry);
 vmci_signal_event(&entry->destroy_event);
}
