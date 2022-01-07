
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_set {int dummy; } ;
struct nicvf {int dummy; } ;


 int NICVF_CQ_RESET ;
 int NIC_QSET_CQ_0_7_CFG ;
 int NIC_QSET_CQ_0_7_CFG2 ;
 int nicvf_queue_reg_write (struct nicvf*,int ,int,int ) ;

__attribute__((used)) static void
nicvf_reclaim_cmp_queue(struct nicvf *nic, struct queue_set *qs, int qidx)
{


 nicvf_queue_reg_write(nic, NIC_QSET_CQ_0_7_CFG2, qidx, 0);

 nicvf_queue_reg_write(nic, NIC_QSET_CQ_0_7_CFG, qidx, 0);

 nicvf_queue_reg_write(nic, NIC_QSET_CQ_0_7_CFG, qidx, NICVF_CQ_RESET);
}
