
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_pair_list {int head; int mutex; } ;


 int vmci_list_init (int *) ;
 int vmci_mutex_destroy (int *) ;

__attribute__((used)) static inline void
queue_pair_list_destroy(struct queue_pair_list *qp_list)
{

 vmci_mutex_destroy(&qp_list->mutex);
 vmci_list_init(&qp_list->head);
}
