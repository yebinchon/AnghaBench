
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qs_num; int rq_num; int cfg; int msg; } ;
union nic_mbx {TYPE_1__ rq; } ;
typedef int uint64_t ;
struct rq_cfg {int ena; scalar_t__ tcp_ena; } ;
struct lro_ctrl {struct ifnet* ifp; } ;
struct rcv_queue {int enable; int cq_qs; int cq_idx; int start_rbdr_qs; int start_qs_rbdr_idx; int cont_rbdr_qs; int cont_qs_rbdr_idx; int caching; void* lro_enabled; struct lro_ctrl lro; } ;
struct queue_set {int vnic_id; int rbdr_cnt; struct rcv_queue* rq; } ;
struct nicvf {struct ifnet* ifp; int dev; } ;
struct ifnet {int dummy; } ;


 void* FALSE ;
 int IFCAP_LRO ;
 int NIC_MBOX_MSG_RQ_BP_CFG ;
 int NIC_MBOX_MSG_RQ_CFG ;
 int NIC_MBOX_MSG_RQ_DROP_CFG ;
 int NIC_QSET_RQ_0_7_CFG ;
 int NIC_QSET_RQ_GEN_CFG ;
 int RQ_CQ_DROP ;
 void* TRUE ;
 int device_printf (int ,char*,int) ;
 int if_getcapenable (struct ifnet*) ;
 int nicvf_queue_reg_write (struct nicvf*,int ,int,int) ;
 int nicvf_reclaim_rcv_queue (struct nicvf*,struct queue_set*,int) ;
 int nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;
 int tcp_lro_free (struct lro_ctrl*) ;
 scalar_t__ tcp_lro_init (struct lro_ctrl*) ;

__attribute__((used)) static void
nicvf_rcv_queue_config(struct nicvf *nic, struct queue_set *qs,
    int qidx, bool enable)
{
 union nic_mbx mbx = {};
 struct rcv_queue *rq;
 struct rq_cfg rq_cfg;
 struct ifnet *ifp;
 struct lro_ctrl *lro;

 ifp = nic->ifp;

 rq = &qs->rq[qidx];
 rq->enable = enable;

 lro = &rq->lro;


 nicvf_queue_reg_write(nic, NIC_QSET_RQ_0_7_CFG, qidx, 0);

 if (!rq->enable) {
  nicvf_reclaim_rcv_queue(nic, qs, qidx);

  tcp_lro_free(lro);
  rq->lro_enabled = FALSE;
  return;
 }


 rq->lro_enabled = FALSE;
 if ((if_getcapenable(ifp) & IFCAP_LRO) != 0) {
  if (tcp_lro_init(lro) != 0) {
   device_printf(nic->dev,
       "Failed to initialize LRO for RXQ%d\n", qidx);
  } else {
   rq->lro_enabled = TRUE;
   lro->ifp = nic->ifp;
  }
 }

 rq->cq_qs = qs->vnic_id;
 rq->cq_idx = qidx;
 rq->start_rbdr_qs = qs->vnic_id;
 rq->start_qs_rbdr_idx = qs->rbdr_cnt - 1;
 rq->cont_rbdr_qs = qs->vnic_id;
 rq->cont_qs_rbdr_idx = qs->rbdr_cnt - 1;

 rq->caching = 1;


 mbx.rq.msg = NIC_MBOX_MSG_RQ_CFG;
 mbx.rq.qs_num = qs->vnic_id;
 mbx.rq.rq_num = qidx;
 mbx.rq.cfg = (rq->caching << 26) | (rq->cq_qs << 19) |
     (rq->cq_idx << 16) | (rq->cont_rbdr_qs << 9) |
     (rq->cont_qs_rbdr_idx << 8) | (rq->start_rbdr_qs << 1) |
     (rq->start_qs_rbdr_idx);
 nicvf_send_msg_to_pf(nic, &mbx);

 mbx.rq.msg = NIC_MBOX_MSG_RQ_BP_CFG;
 mbx.rq.cfg = (1UL << 63) | (1UL << 62) | (qs->vnic_id << 0);
 nicvf_send_msg_to_pf(nic, &mbx);





 mbx.rq.msg = NIC_MBOX_MSG_RQ_DROP_CFG;
 mbx.rq.cfg = (1UL << 62) | (RQ_CQ_DROP << 8);
 nicvf_send_msg_to_pf(nic, &mbx);

 nicvf_queue_reg_write(nic, NIC_QSET_RQ_GEN_CFG, 0, 0x00);


 rq_cfg.ena = 1;
 rq_cfg.tcp_ena = 0;
 nicvf_queue_reg_write(nic, NIC_QSET_RQ_0_7_CFG, qidx,
     *(uint64_t *)&rq_cfg);
}
