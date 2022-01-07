
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {int dummy; } ;
struct cmp_queue {int idx; int cmp_task; int cmp_taskq; struct nicvf* nic; } ;


 int NICVF_INTR_CQ ;
 scalar_t__ __predict_false (int) ;
 int nicvf_clear_intr (struct nicvf*,int ,int ) ;
 int nicvf_cq_intr_handler (struct nicvf*,int ) ;
 int nicvf_enable_intr (struct nicvf*,int ,int ) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
nicvf_cmp_task(void *arg, int pending)
{
 struct cmp_queue *cq;
 struct nicvf *nic;
 int cmp_err;

 cq = (struct cmp_queue *)arg;
 nic = cq->nic;


 cmp_err = nicvf_cq_intr_handler(nic, cq->idx);
 if (__predict_false(cmp_err != 0)) {




  taskqueue_enqueue(cq->cmp_taskq, &cq->cmp_task);

 }

 nicvf_clear_intr(nic, NICVF_INTR_CQ, cq->idx);

 nicvf_enable_intr(nic, NICVF_INTR_CQ, cq->idx);

}
