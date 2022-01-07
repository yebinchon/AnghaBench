
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_set {int rbdr_cnt; int cq_cnt; int sq_cnt; int * sq; int * cq; int * rbdr; int * qs_err_taskq; int qs_err_task; } ;
struct nicvf {struct queue_set* qs; } ;


 int nicvf_free_cmp_queue (struct nicvf*,int *) ;
 int nicvf_free_rbdr (struct nicvf*,int *) ;
 int nicvf_free_snd_queue (struct nicvf*,int *) ;
 scalar_t__ taskqueue_cancel (int *,int *,int *) ;
 int taskqueue_drain (int *,int *) ;
 int taskqueue_free (int *) ;

__attribute__((used)) static void
nicvf_free_resources(struct nicvf *nic)
{
 int qidx;
 struct queue_set *qs;

 qs = nic->qs;




 if (qs->qs_err_taskq != ((void*)0)) {

  while (taskqueue_cancel(qs->qs_err_taskq,
      &qs->qs_err_task, ((void*)0)) != 0) {
   taskqueue_drain(qs->qs_err_taskq, &qs->qs_err_task);

  }
  taskqueue_free(qs->qs_err_taskq);
  qs->qs_err_taskq = ((void*)0);
 }

 for (qidx = 0; qidx < qs->rbdr_cnt; qidx++)
  nicvf_free_rbdr(nic, &qs->rbdr[qidx]);


 for (qidx = 0; qidx < qs->cq_cnt; qidx++)
  nicvf_free_cmp_queue(nic, &qs->cq[qidx]);


 for (qidx = 0; qidx < qs->sq_cnt; qidx++)
  nicvf_free_snd_queue(nic, &qs->sq[qidx]);
}
