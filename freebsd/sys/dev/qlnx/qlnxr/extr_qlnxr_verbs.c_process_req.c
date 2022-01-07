
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_12__ {scalar_t__ wqe_cons; size_t cons; int pbl; } ;
struct qlnxr_qp {TYPE_6__ sq; TYPE_5__* wqe_wr_id; int ibqp; int id; } ;
struct qlnxr_dev {int * ha; } ;
struct qlnxr_cq {int dummy; } ;
struct ib_wc {int status; int opcode; int byte_len; int wr_id; int * qp; int src_qp; scalar_t__ wc_flags; scalar_t__ vendor_err; } ;
typedef int qlnx_host_t ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;
struct TYPE_11__ {int opcode; int bytes_len; int wqe_size; TYPE_4__* frmr; TYPE_2__* mr; int wr_id; int signaled; } ;
struct TYPE_9__ {int completed; } ;
struct TYPE_10__ {TYPE_3__ info; } ;
struct TYPE_7__ {int completed; } ;
struct TYPE_8__ {TYPE_1__ info; } ;
 int QL_DPRINT12 (int *,char*,...) ;
 int ecore_chain_consume (int *) ;
 int qlnxr_chk_if_fmr (struct qlnxr_qp*) ;
 int qlnxr_inc_sw_cons (TYPE_6__*) ;

__attribute__((used)) static int
process_req(struct qlnxr_dev *dev,
 struct qlnxr_qp *qp,
 struct qlnxr_cq *cq,
 int num_entries,
 struct ib_wc *wc,
 u16 hw_cons,
 enum ib_wc_status status,
 int force)
{
 u16 cnt = 0;
 qlnx_host_t *ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 while (num_entries && qp->sq.wqe_cons != hw_cons) {
  if (!qp->wqe_wr_id[qp->sq.cons].signaled && !force) {
   qlnxr_chk_if_fmr(qp);

   goto next_cqe;
  }


  wc->status = status;
  wc->vendor_err = 0;
  wc->wc_flags = 0;
  wc->src_qp = qp->id;
  wc->qp = &qp->ibqp;


  wc->wr_id = qp->wqe_wr_id[qp->sq.cons].wr_id;
  wc->opcode = qp->wqe_wr_id[qp->sq.cons].opcode;

  switch (wc->opcode) {

  case 130:

   wc->byte_len = qp->wqe_wr_id[qp->sq.cons].bytes_len;

   QL_DPRINT12(ha,
    "opcode = IB_WC_RDMA_WRITE bytes = %d\n",
    qp->wqe_wr_id[qp->sq.cons].bytes_len);
   break;

  case 134:
  case 132:
   wc->byte_len = 8;
   break;






  case 133:
   qp->wqe_wr_id[qp->sq.cons].frmr->info.completed++;
   break;


  case 131:
  case 128:

   QL_DPRINT12(ha, "opcode = 0x%x \n", wc->opcode);
   break;
  default:
   ;
  }

  num_entries--;
  wc++;
  cnt++;
next_cqe:
  while (qp->wqe_wr_id[qp->sq.cons].wqe_size--)
   ecore_chain_consume(&qp->sq.pbl);
  qlnxr_inc_sw_cons(&qp->sq);
 }

 QL_DPRINT12(ha, "exit cnt = 0x%x\n", cnt);
 return cnt;
}
