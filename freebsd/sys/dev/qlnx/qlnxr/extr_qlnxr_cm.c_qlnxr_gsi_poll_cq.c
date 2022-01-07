
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {size_t cons; size_t gsi_cons; } ;
struct qlnxr_qp {TYPE_4__ sq; TYPE_3__* wqe_wr_id; int ibqp; TYPE_4__ rq; TYPE_2__* rqe_wr_id; } ;
struct qlnxr_dev {int ha; struct qlnxr_qp* gsi_qp; } ;
struct qlnxr_cq {int cq_lock; } ;
struct ib_wc {int wc_flags; void* status; int opcode; int wr_id; int * qp; scalar_t__ vlan_id; int smac; int byte_len; scalar_t__ pkey_index; } ;
struct ib_cq {int device; } ;
struct TYPE_7__ {int wr_id; } ;
struct TYPE_6__ {scalar_t__ vlan_id; int smac; TYPE_1__* sg_list; scalar_t__ rc; int wr_id; } ;
struct TYPE_5__ {int length; } ;


 int ETH_ALEN ;
 void* IB_WC_GENERAL_ERR ;
 int IB_WC_GRH ;
 int IB_WC_IP_CSUM_OK ;
 int IB_WC_RECV ;
 int IB_WC_SEND ;
 void* IB_WC_SUCCESS ;
 int IB_WC_WITH_SMAC ;
 int IB_WC_WITH_VLAN ;
 int QL_DPRINT12 (int ,char*,...) ;
 struct qlnxr_cq* get_qlnxr_cq (struct ib_cq*) ;
 struct qlnxr_dev* get_qlnxr_dev (int ) ;
 int memcpy (int *,int ,int ) ;
 int memset (struct ib_wc*,int ,int) ;
 int qlnxr_inc_sw_cons (TYPE_4__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
qlnxr_gsi_poll_cq(struct ib_cq *ibcq, int num_entries, struct ib_wc *wc)
{
 struct qlnxr_dev *dev = get_qlnxr_dev((ibcq->device));
 struct qlnxr_cq *cq = get_qlnxr_cq(ibcq);
 struct qlnxr_qp *qp = dev->gsi_qp;
 unsigned long flags;
 int i = 0;

 QL_DPRINT12(dev->ha, "enter\n");

 spin_lock_irqsave(&cq->cq_lock, flags);

 while (i < num_entries && qp->rq.cons != qp->rq.gsi_cons) {
  memset(&wc[i], 0, sizeof(*wc));

  wc[i].qp = &qp->ibqp;
  wc[i].wr_id = qp->rqe_wr_id[qp->rq.cons].wr_id;
  wc[i].opcode = IB_WC_RECV;
  wc[i].pkey_index = 0;
  wc[i].status = (qp->rqe_wr_id[qp->rq.cons].rc)?
          IB_WC_GENERAL_ERR:IB_WC_SUCCESS;

  wc[i].byte_len = qp->rqe_wr_id[qp->rq.cons].sg_list[0].length;
  wc[i].wc_flags |= IB_WC_GRH | IB_WC_IP_CSUM_OK;
  qlnxr_inc_sw_cons(&qp->rq);
  i++;
 }

 while (i < num_entries && qp->sq.cons != qp->sq.gsi_cons) {
  memset(&wc[i], 0, sizeof(*wc));

  wc[i].qp = &qp->ibqp;
  wc[i].wr_id = qp->wqe_wr_id[qp->sq.cons].wr_id;
  wc[i].opcode = IB_WC_SEND;
  wc[i].status = IB_WC_SUCCESS;

  qlnxr_inc_sw_cons(&qp->sq);
  i++;
 }

 spin_unlock_irqrestore(&cq->cq_lock, flags);

 QL_DPRINT12(dev->ha, "exit i = %d\n", i);
 return i;
}
