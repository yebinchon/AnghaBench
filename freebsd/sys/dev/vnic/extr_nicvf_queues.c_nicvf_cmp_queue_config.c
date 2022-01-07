
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct queue_set {struct cmp_queue* cq; } ;
struct nicvf {int cq_coalesce_usecs; } ;
struct cq_cfg {int ena; scalar_t__ avg_con; int qsize; scalar_t__ caching; scalar_t__ reset; } ;
struct TYPE_2__ {scalar_t__ phys_base; } ;
struct cmp_queue {int thresh; TYPE_1__ dmem; int enable; } ;
typedef int boolean_t ;


 int CMP_QSIZE ;
 int NICVF_CQ_RESET ;
 int NIC_QSET_CQ_0_7_BASE ;
 int NIC_QSET_CQ_0_7_CFG ;
 int NIC_QSET_CQ_0_7_CFG2 ;
 int NIC_QSET_CQ_0_7_THRESH ;
 int nicvf_queue_reg_write (struct nicvf*,int ,int,int ) ;
 int nicvf_reclaim_cmp_queue (struct nicvf*,struct queue_set*,int) ;

__attribute__((used)) static void
nicvf_cmp_queue_config(struct nicvf *nic, struct queue_set *qs,
    int qidx, boolean_t enable)
{
 struct cmp_queue *cq;
 struct cq_cfg cq_cfg;

 cq = &qs->cq[qidx];
 cq->enable = enable;

 if (!cq->enable) {
  nicvf_reclaim_cmp_queue(nic, qs, qidx);
  return;
 }


 nicvf_queue_reg_write(nic, NIC_QSET_CQ_0_7_CFG, qidx, NICVF_CQ_RESET);


 nicvf_queue_reg_write(nic, NIC_QSET_CQ_0_7_BASE, qidx,
     (uint64_t)(cq->dmem.phys_base));


 cq_cfg.ena = 1;
 cq_cfg.reset = 0;
 cq_cfg.caching = 0;
 cq_cfg.qsize = CMP_QSIZE;
 cq_cfg.avg_con = 0;
 nicvf_queue_reg_write(nic, NIC_QSET_CQ_0_7_CFG, qidx, *(uint64_t *)&cq_cfg);


 nicvf_queue_reg_write(nic, NIC_QSET_CQ_0_7_THRESH, qidx, cq->thresh);
 nicvf_queue_reg_write(nic, NIC_QSET_CQ_0_7_CFG2, qidx,
     nic->cq_coalesce_usecs);
}
