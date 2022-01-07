
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_subscription {int ref_count; } ;


 int ASSERT (struct vmci_subscription*) ;

__attribute__((used)) static void
vmci_event_get(struct vmci_subscription *entry)
{

 ASSERT(entry);

 entry->ref_count++;
}
