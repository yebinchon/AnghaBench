
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datagram_entry {int destroy_event; } ;


 int ASSERT (struct datagram_entry*) ;
 int vmci_signal_event (int *) ;

__attribute__((used)) static void
datagram_free_cb(void *client_data)
{
 struct datagram_entry *entry = (struct datagram_entry *)client_data;

 ASSERT(entry);

 vmci_signal_event(&entry->destroy_event);





}
