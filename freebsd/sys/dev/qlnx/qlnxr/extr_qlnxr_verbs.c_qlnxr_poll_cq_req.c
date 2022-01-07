
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cqe_requester {int status; int sq_cons; } ;
struct qlnxr_qp {int state; } ;
struct qlnxr_dev {int * ha; } ;
struct qlnxr_cq {int dummy; } ;
struct ib_wc {int dummy; } ;
typedef int qlnx_host_t ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;


 int ECORE_ROCE_QP_STATE_ERR ;
 int IB_WC_BAD_RESP_ERR ;
 int IB_WC_GENERAL_ERR ;
 int IB_WC_LOC_LEN_ERR ;
 int IB_WC_LOC_PROT_ERR ;
 int IB_WC_LOC_QP_OP_ERR ;
 int IB_WC_MW_BIND_ERR ;
 int IB_WC_REM_ACCESS_ERR ;
 int IB_WC_REM_INV_REQ_ERR ;
 int IB_WC_REM_OP_ERR ;
 int IB_WC_RETRY_EXC_ERR ;
 int IB_WC_RNR_RETRY_EXC_ERR ;
 int IB_WC_SUCCESS ;
 int IB_WC_WR_FLUSH_ERR ;
 int QL_DPRINT12 (int *,char*,int) ;
 int process_req (struct qlnxr_dev*,struct qlnxr_qp*,struct qlnxr_cq*,int,struct ib_wc*,int ,int,int) ;

__attribute__((used)) static int
qlnxr_poll_cq_req(struct qlnxr_dev *dev,
 struct qlnxr_qp *qp,
 struct qlnxr_cq *cq,
 int num_entries,
 struct ib_wc *wc,
 struct rdma_cqe_requester *req)
{
 int cnt = 0;
 qlnx_host_t *ha = dev->ha;

 QL_DPRINT12(ha, "enter req->status = 0x%x\n", req->status);

 switch (req->status) {

 case 134:

  cnt = process_req(dev, qp, cq, num_entries, wc, req->sq_cons,
   IB_WC_SUCCESS, 0);
  break;

 case 128:

  if (qp->state != ECORE_ROCE_QP_STATE_ERR)
  cnt = process_req(dev, qp, cq, num_entries, wc, req->sq_cons,
      IB_WC_WR_FLUSH_ERR, 1);
  break;

 default:


  qp->state = ECORE_ROCE_QP_STATE_ERR;
  cnt = process_req(dev, qp, cq, num_entries, wc,
    req->sq_cons - 1, IB_WC_SUCCESS, 0);
  wc += cnt;


  if (cnt < num_entries) {
   enum ib_wc_status wc_status;

   switch (req->status) {
   case 139:
    wc_status = IB_WC_BAD_RESP_ERR;
    break;
   case 138:
    wc_status = IB_WC_LOC_LEN_ERR;
    break;
   case 136:
    wc_status = IB_WC_LOC_QP_OP_ERR;
    break;
   case 137:
    wc_status = IB_WC_LOC_PROT_ERR;
    break;
   case 135:
    wc_status = IB_WC_MW_BIND_ERR;
    break;
   case 132:
    wc_status = IB_WC_REM_INV_REQ_ERR;
    break;
   case 133:
    wc_status = IB_WC_REM_ACCESS_ERR;
    break;
   case 131:
    wc_status = IB_WC_REM_OP_ERR;
    break;
   case 130:
    wc_status = IB_WC_RNR_RETRY_EXC_ERR;
    break;
   case 129:
    wc_status = IB_WC_RETRY_EXC_ERR;
    break;
   default:
    wc_status = IB_WC_GENERAL_ERR;
   }

   cnt += process_req(dev, qp, cq, 1, wc, req->sq_cons,
     wc_status, 1 );
  }
 }

 QL_DPRINT12(ha, "exit cnt = %d\n", cnt);
 return cnt;
}
