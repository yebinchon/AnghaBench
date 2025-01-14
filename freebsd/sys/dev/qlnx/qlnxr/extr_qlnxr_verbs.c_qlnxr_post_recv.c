
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int u32 ;
struct TYPE_16__ {scalar_t__ lo; scalar_t__ hi; } ;
struct rdma_rq_sge {int flags; scalar_t__ length; TYPE_3__ addr; } ;
struct TYPE_21__ {int raw; } ;
struct TYPE_18__ {int value; } ;
struct TYPE_19__ {int raw; TYPE_5__ data; } ;
struct TYPE_13__ {int max_sges; size_t prod; TYPE_8__ iwarp_db2_data; scalar_t__ iwarp_db2; TYPE_6__ db_data; scalar_t__ db; int pbl; } ;
struct qlnxr_qp {scalar_t__ qp_type; scalar_t__ state; int q_lock; TYPE_10__ rq; TYPE_4__* rqe_wr_id; scalar_t__ srq; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {TYPE_9__* ha; } ;
struct ib_recv_wr {int num_sge; struct ib_recv_wr* next; int wr_id; TYPE_2__* sg_list; } ;
struct ib_qp {int dummy; } ;
struct TYPE_20__ {scalar_t__ doorbells; } ;
struct TYPE_22__ {int pci_dbells; TYPE_7__ cdev; TYPE_1__* ifp; } ;
typedef TYPE_9__ qlnx_host_t ;
struct TYPE_17__ {int wqe_size; int wr_id; } ;
struct TYPE_15__ {int lkey; int length; int addr; } ;
struct TYPE_14__ {int if_drv_flags; } ;


 int BUS_SPACE_BARRIER_READ ;
 scalar_t__ ECORE_ROCE_QP_STATE_RESET ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IB_QPT_GSI ;
 int IFF_DRV_RUNNING ;
 scalar_t__ QLNXR_MAX_RQE_ELEMENTS_PER_RQE ;
 scalar_t__ QLNX_IS_IWARP (struct qlnxr_dev*) ;
 int QL_DPRINT11 (TYPE_9__*,char*,...) ;
 int QL_DPRINT12 (TYPE_9__*,char*,...) ;
 int RDMA_RQ_SGE_L_KEY ;
 int RDMA_RQ_SGE_NUM_SGES ;
 int RQ_SGE_SET (struct rdma_rq_sge*,int ,int ,int ) ;
 int SET_FIELD (int ,int ,int) ;
 int bus_barrier (int ,int ,int ,int ) ;
 int bus_write_4 (int ,scalar_t__,int ) ;
 int cpu_to_le32 (int ) ;
 scalar_t__ ecore_chain_get_elem_left_u32 (int *) ;
 struct rdma_rq_sge* ecore_chain_produce (int *) ;
 struct qlnxr_qp* get_qlnxr_qp (struct ib_qp*) ;
 int mmiowb () ;
 int qlnxr_gsi_post_recv (struct ib_qp*,struct ib_recv_wr*,struct ib_recv_wr**) ;
 int qlnxr_inc_sw_prod (TYPE_10__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wmb () ;

int
qlnxr_post_recv(struct ib_qp *ibqp,
 struct ib_recv_wr *wr,
 struct ib_recv_wr **bad_wr)
{
  struct qlnxr_qp *qp = get_qlnxr_qp(ibqp);
 struct qlnxr_dev *dev = qp->dev;
 unsigned long flags;
 int status = 0;
 qlnx_host_t *ha;
 uint32_t reg_addr;

 ha = dev->ha;

 if (!(ha->ifp->if_drv_flags & IFF_DRV_RUNNING))
  return -EINVAL;

 QL_DPRINT12(ha, "enter\n");

 if (qp->qp_type == IB_QPT_GSI) {
  QL_DPRINT12(ha, "(qp->qp_type = IB_QPT_GSI)\n");
  return qlnxr_gsi_post_recv(ibqp, wr, bad_wr);
 }

 if (qp->srq) {
  QL_DPRINT11(ha, "qp->srq [%p]"
   " QP is associated with SRQ, cannot post RQ buffers\n",
   qp->srq);
  return -EINVAL;
 }

 spin_lock_irqsave(&qp->q_lock, flags);

 if (qp->state == ECORE_ROCE_QP_STATE_RESET) {
  spin_unlock_irqrestore(&qp->q_lock, flags);
  *bad_wr = wr;

  QL_DPRINT11(ha, "qp->qp_type = ECORE_ROCE_QP_STATE_RESET\n");

  return -EINVAL;
 }

 while (wr) {
  int i;

  if ((ecore_chain_get_elem_left_u32(&qp->rq.pbl) <
   QLNXR_MAX_RQE_ELEMENTS_PER_RQE) ||
   (wr->num_sge > qp->rq.max_sges)) {
   status = -ENOMEM;
   *bad_wr = wr;
   break;
  }
  for (i = 0; i < wr->num_sge; i++) {
   u32 flags = 0;
   struct rdma_rq_sge *rqe = ecore_chain_produce(&qp->rq.pbl);


   if (!i)
    SET_FIELD(flags, RDMA_RQ_SGE_NUM_SGES, wr->num_sge);

   SET_FIELD(flags, RDMA_RQ_SGE_L_KEY, wr->sg_list[i].lkey);

   RQ_SGE_SET(rqe, wr->sg_list[i].addr, wr->sg_list[i].length, flags);

  }



  if (!wr->num_sge) {
   u32 flags = 0;
   struct rdma_rq_sge *rqe = ecore_chain_produce(&qp->rq.pbl);


   SET_FIELD(flags, RDMA_RQ_SGE_L_KEY, 0);
   SET_FIELD(flags, RDMA_RQ_SGE_NUM_SGES, 1);


   rqe->addr.hi = 0;
   rqe->addr.lo = 0;

   rqe->length = 0;
   rqe->flags = cpu_to_le32(flags);

   i = 1;
  }

  qp->rqe_wr_id[qp->rq.prod].wr_id = wr->wr_id;
  qp->rqe_wr_id[qp->rq.prod].wqe_size = i;

  qlnxr_inc_sw_prod(&qp->rq);

  wmb();

  qp->rq.db_data.data.value++;


  mmiowb();





  reg_addr = (uint32_t)((uint8_t *)qp->rq.db -
    (uint8_t *)ha->cdev.doorbells);

  bus_write_4(ha->pci_dbells, reg_addr, qp->rq.db_data.raw);
  bus_barrier(ha->pci_dbells, 0, 0, BUS_SPACE_BARRIER_READ);

  if (QLNX_IS_IWARP(dev)) {
   reg_addr = (uint32_t)((uint8_t *)qp->rq.iwarp_db2 -
      (uint8_t *)ha->cdev.doorbells);
   bus_write_4(ha->pci_dbells, reg_addr, qp->rq.iwarp_db2_data.raw);

   bus_barrier(ha->pci_dbells, 0, 0, BUS_SPACE_BARRIER_READ);

  }

  wr = wr->next;
 }

 spin_unlock_irqrestore(&qp->q_lock, flags);

 QL_DPRINT12(ha, "exit status = 0x%x\n", status);

 return status;
}
