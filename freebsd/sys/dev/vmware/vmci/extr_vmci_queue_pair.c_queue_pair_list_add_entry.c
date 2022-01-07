
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_pair_list {int head; } ;
struct queue_pair_entry {int dummy; } ;


 int list_item ;
 int vmci_list_insert (int *,struct queue_pair_entry*,int ) ;

__attribute__((used)) static void
queue_pair_list_add_entry(struct queue_pair_list *qp_list,
    struct queue_pair_entry *entry)
{

 if (entry)
  vmci_list_insert(&qp_list->head, entry, list_item);
}
