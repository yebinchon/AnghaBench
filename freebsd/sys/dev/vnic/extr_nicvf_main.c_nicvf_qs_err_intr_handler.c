
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_set {int qs_err_task; int qs_err_taskq; } ;
struct nicvf {struct queue_set* qs; } ;


 int NICVF_INTR_QS_ERR ;
 int nicvf_clear_intr (struct nicvf*,int ,int ) ;
 int nicvf_disable_intr (struct nicvf*,int ,int ) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
nicvf_qs_err_intr_handler(void *arg)
{
 struct nicvf *nic = (struct nicvf *)arg;
 struct queue_set *qs = nic->qs;


 nicvf_disable_intr(nic, NICVF_INTR_QS_ERR, 0);
 taskqueue_enqueue(qs->qs_err_taskq, &qs->qs_err_task);
 nicvf_clear_intr(nic, NICVF_INTR_QS_ERR, 0);

}
