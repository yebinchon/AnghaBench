
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbdr {int rbdr_task_nowait; int rbdr_taskq; } ;
struct queue_set {int rbdr_cnt; struct rbdr* rbdr; } ;
struct nicvf {struct queue_set* qs; } ;


 int NICVF_INTR_RBDR ;
 int nicvf_clear_intr (struct nicvf*,int ,int) ;
 int nicvf_disable_intr (struct nicvf*,int ,int) ;
 int nicvf_is_intr_enabled (struct nicvf*,int ,int) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
nicvf_rbdr_intr_handler(void *arg)
{
 struct nicvf *nic;
 struct queue_set *qs;
 struct rbdr *rbdr;
 int qidx;

 nic = (struct nicvf *)arg;


 for (qidx = 0; qidx < nic->qs->rbdr_cnt; qidx++) {
  if (!nicvf_is_intr_enabled(nic, NICVF_INTR_RBDR, qidx))
   continue;
  nicvf_disable_intr(nic, NICVF_INTR_RBDR, qidx);

  qs = nic->qs;
  rbdr = &qs->rbdr[qidx];
  taskqueue_enqueue(rbdr->rbdr_taskq, &rbdr->rbdr_task_nowait);

  nicvf_clear_intr(nic, NICVF_INTR_RBDR, qidx);
 }
}
