
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_cq {int work; } ;


 int ib_comp_wq ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void
ib_cq_completion_workqueue(struct ib_cq *cq, void *private)
{
 queue_work(ib_comp_wq, &cq->work);
}
