
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datagram_entry {int resource; } ;


 int ASSERT (struct datagram_entry*) ;
 int vmci_resource_release (int *) ;

__attribute__((used)) static int
datagram_release_cb(void *client_data)
{
 struct datagram_entry *entry;

 entry = (struct datagram_entry *)client_data;

 ASSERT(entry);

 vmci_resource_release(&entry->resource);

 return (0);
}
