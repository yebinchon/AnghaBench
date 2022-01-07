
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_pair_list {int head; } ;
struct queue_pair_entry {int dummy; } ;


 struct queue_pair_entry* vmci_list_first (int *) ;

__attribute__((used)) static struct queue_pair_entry *
queue_pair_list_get_head(struct queue_pair_list *qp_list)
{

 return (vmci_list_first(&qp_list->head));
}
