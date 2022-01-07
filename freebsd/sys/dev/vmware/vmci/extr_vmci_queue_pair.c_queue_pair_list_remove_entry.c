
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_pair_list {int dummy; } ;
struct queue_pair_entry {int dummy; } ;


 int list_item ;
 int vmci_list_remove (struct queue_pair_entry*,int ) ;

__attribute__((used)) static void
queue_pair_list_remove_entry(struct queue_pair_list *qp_list,
    struct queue_pair_entry *entry)
{

 if (entry)
  vmci_list_remove(entry, list_item);
}
