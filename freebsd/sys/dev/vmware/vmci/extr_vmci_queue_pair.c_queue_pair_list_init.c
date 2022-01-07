
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_pair_list {int mutex; int hibernate; int head; } ;


 int atomic_store_int (int *,int ) ;
 int vmci_list_init (int *) ;
 int vmci_mutex_init (int *,char*) ;

__attribute__((used)) static inline int
queue_pair_list_init(struct queue_pair_list *qp_list)
{
 int ret;

 vmci_list_init(&qp_list->head);
 atomic_store_int(&qp_list->hibernate, 0);
 ret = vmci_mutex_init(&qp_list->mutex, "VMCI QP List lock");
 return (ret);
}
