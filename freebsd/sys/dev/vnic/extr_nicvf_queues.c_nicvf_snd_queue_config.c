
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int qs_num; int sq_num; int cfg; int sqs_mode; int msg; } ;
union nic_mbx {TYPE_1__ sq; } ;
typedef int uint64_t ;
struct sq_cfg {int ena; scalar_t__ tstmp_bgx_intf; int qsize; scalar_t__ ldwb; scalar_t__ reset; } ;
struct TYPE_4__ {scalar_t__ phys_base; } ;
struct snd_queue {int cq_qs; int cq_idx; int thresh; TYPE_2__ dmem; int enable; } ;
struct queue_set {int vnic_id; struct snd_queue* sq; } ;
struct nicvf {int sqs_mode; } ;
typedef int boolean_t ;


 int NICVF_SQ_RESET ;
 int NIC_MBOX_MSG_SQ_CFG ;
 int NIC_QSET_SQ_0_7_BASE ;
 int NIC_QSET_SQ_0_7_CFG ;
 int NIC_QSET_SQ_0_7_THRESH ;
 int SND_QSIZE ;
 int nicvf_queue_reg_write (struct nicvf*,int ,int,int ) ;
 int nicvf_reclaim_snd_queue (struct nicvf*,struct queue_set*,int) ;
 int nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

__attribute__((used)) static void
nicvf_snd_queue_config(struct nicvf *nic, struct queue_set *qs, int qidx,
    boolean_t enable)
{
 union nic_mbx mbx = {};
 struct snd_queue *sq;
 struct sq_cfg sq_cfg;

 sq = &qs->sq[qidx];
 sq->enable = enable;

 if (!sq->enable) {
  nicvf_reclaim_snd_queue(nic, qs, qidx);
  return;
 }


 nicvf_queue_reg_write(nic, NIC_QSET_SQ_0_7_CFG, qidx, NICVF_SQ_RESET);

 sq->cq_qs = qs->vnic_id;
 sq->cq_idx = qidx;


 mbx.sq.msg = NIC_MBOX_MSG_SQ_CFG;
 mbx.sq.qs_num = qs->vnic_id;
 mbx.sq.sq_num = qidx;
 mbx.sq.sqs_mode = nic->sqs_mode;
 mbx.sq.cfg = (sq->cq_qs << 3) | sq->cq_idx;
 nicvf_send_msg_to_pf(nic, &mbx);


 nicvf_queue_reg_write(nic, NIC_QSET_SQ_0_7_BASE, qidx,
     (uint64_t)(sq->dmem.phys_base));


 sq_cfg.ena = 1;
 sq_cfg.reset = 0;
 sq_cfg.ldwb = 0;
 sq_cfg.qsize = SND_QSIZE;
 sq_cfg.tstmp_bgx_intf = 0;
 nicvf_queue_reg_write(nic, NIC_QSET_SQ_0_7_CFG, qidx, *(uint64_t *)&sq_cfg);


 nicvf_queue_reg_write(nic, NIC_QSET_SQ_0_7_THRESH, qidx, sq->thresh);
}
