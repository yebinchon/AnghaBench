
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct queue_set {int cq_cnt; int * sq; } ;
struct nicvf {int ifp; struct queue_set* qs; } ;
typedef int boolean_t ;


 int CQ_ERR_MASK ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int NICVF_INTR_CQ ;
 int NICVF_INTR_QS_ERR ;
 int NIC_QSET_CQ_0_7_STATUS ;
 int TRUE ;
 int if_setdrvflagbits (int ,int ,int ) ;
 int nicvf_cmp_queue_config (struct nicvf*,struct queue_set*,int,int ) ;
 int nicvf_cq_intr_handler (struct nicvf*,int) ;
 int nicvf_disable_intr (struct nicvf*,int ,int) ;
 int nicvf_enable_intr (struct nicvf*,int ,int) ;
 int nicvf_queue_reg_read (struct nicvf*,int ,int) ;
 int nicvf_sq_disable (struct nicvf*,int) ;
 int nicvf_sq_enable (struct nicvf*,int *,int) ;
 int nicvf_sq_free_used_descs (struct nicvf*,int *,int) ;

__attribute__((used)) static void
nicvf_qs_err_task(void *arg, int pending)
{
 struct nicvf *nic;
 struct queue_set *qs;
 int qidx;
 uint64_t status;
 boolean_t enable = TRUE;

 nic = (struct nicvf *)arg;
 qs = nic->qs;


 if_setdrvflagbits(nic->ifp, IFF_DRV_OACTIVE, IFF_DRV_RUNNING);


 for (qidx = 0; qidx < qs->cq_cnt; qidx++) {
  status = nicvf_queue_reg_read(nic, NIC_QSET_CQ_0_7_STATUS,
      qidx);
  if ((status & CQ_ERR_MASK) == 0)
   continue;

  nicvf_disable_intr(nic, NICVF_INTR_CQ, qidx);
  nicvf_sq_disable(nic, qidx);
  (void)nicvf_cq_intr_handler(nic, qidx);
  nicvf_cmp_queue_config(nic, qs, qidx, enable);
  nicvf_sq_free_used_descs(nic, &qs->sq[qidx], qidx);
  nicvf_sq_enable(nic, &qs->sq[qidx], qidx);
  nicvf_enable_intr(nic, NICVF_INTR_CQ, qidx);
 }

 if_setdrvflagbits(nic->ifp, IFF_DRV_RUNNING, IFF_DRV_OACTIVE);

 nicvf_enable_intr(nic, NICVF_INTR_QS_ERR, 0);
}
