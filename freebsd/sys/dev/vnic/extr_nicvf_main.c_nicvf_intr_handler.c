
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {int dummy; } ;
struct cmp_queue {int idx; int cmp_task; int cmp_taskq; struct nicvf* nic; } ;


 int FILTER_HANDLED ;
 int NICVF_INTR_CQ ;
 int nicvf_clear_intr (struct nicvf*,int ,int) ;
 int nicvf_disable_intr (struct nicvf*,int ,int) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
nicvf_intr_handler(void *arg)
{
 struct nicvf *nic;
 struct cmp_queue *cq;
 int qidx;

 cq = (struct cmp_queue *)arg;
 nic = cq->nic;
 qidx = cq->idx;


 nicvf_disable_intr(nic, NICVF_INTR_CQ, qidx);

 taskqueue_enqueue(cq->cmp_taskq, &cq->cmp_task);


 nicvf_clear_intr(nic, NICVF_INTR_CQ, qidx);

 return (FILTER_HANDLED);
}
