
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct rdma_cqe_responder {int flags; int imm_data_or_inv_r_Key; int length; int status; } ;
struct qlnxr_qp {int ibqp; int id; } ;
struct qlnxr_dev {int * ha; } ;
struct qlnxr_cq {int icid; } ;
struct TYPE_2__ {void* imm_data; } ;
struct ib_wc {int status; int wr_id; int * qp; int src_qp; scalar_t__ vendor_err; scalar_t__ wc_flags; TYPE_1__ ex; void* opcode; void* byte_len; } ;
typedef int qlnx_host_t ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;


 int IB_WC_GENERAL_ERR ;
 int IB_WC_LOC_ACCESS_ERR ;
 int IB_WC_LOC_LEN_ERR ;
 int IB_WC_LOC_PROT_ERR ;
 int IB_WC_LOC_QP_OP_ERR ;
 int IB_WC_MW_BIND_ERR ;
 void* IB_WC_RECV ;
 void* IB_WC_RECV_RDMA_WITH_IMM ;
 int IB_WC_REM_INV_RD_REQ_ERR ;
 int IB_WC_SUCCESS ;
 scalar_t__ IB_WC_WITH_IMM ;
 scalar_t__ IB_WC_WITH_INVALIDATE ;

 int QLNXR_RESP_INV ;


 int QL_DPRINT11 (int *,char*,int,struct qlnxr_qp*,int ,struct qlnxr_cq*,int ) ;
 int QL_DPRINT12 (int *,char*,...) ;







 void* le32_to_cpu (int ) ;

__attribute__((used)) static void
__process_resp_one(struct qlnxr_dev *dev,
 struct qlnxr_qp *qp,
 struct qlnxr_cq *cq,
 struct ib_wc *wc,
 struct rdma_cqe_responder *resp,
 u64 wr_id)
{
 enum ib_wc_status wc_status = IB_WC_SUCCESS;

 u8 flags;

 qlnx_host_t *ha = dev->ha;

 QL_DPRINT12(ha, "enter qp = %p resp->status = 0x%x\n",
  qp, resp->status);

 wc->opcode = IB_WC_RECV;
 wc->wc_flags = 0;

 switch (resp->status) {

 case 134:
  wc_status = IB_WC_LOC_ACCESS_ERR;
  break;

 case 133:
  wc_status = IB_WC_LOC_LEN_ERR;
  break;

 case 131:
  wc_status = IB_WC_LOC_QP_OP_ERR;
  break;

 case 132:
  wc_status = IB_WC_LOC_PROT_ERR;
  break;

 case 130:
  wc_status = IB_WC_MW_BIND_ERR;
  break;

 case 128:
  wc_status = IB_WC_REM_INV_RD_REQ_ERR;
  break;

 case 129:
  wc_status = IB_WC_SUCCESS;
  wc->byte_len = le32_to_cpu(resp->length);

  flags = resp->flags & 135;

  switch (flags) {

  case 135:

   wc->opcode = IB_WC_RECV_RDMA_WITH_IMM;

  case 137:
   wc->ex.imm_data =
    le32_to_cpu(resp->imm_data_or_inv_r_Key);
   wc->wc_flags |= IB_WC_WITH_IMM;
   break;
  case 136:
   QL_DPRINT11(ha, "Invalid flags QLNXR_RESP_RDMA [0x%x]"
    "qp = %p qp->id = 0x%x cq = %p cq->icid = 0x%x\n",
    resp->flags, qp, qp->id, cq, cq->icid );
   break;
  default:

   ;
  }


  break;
 default:
  wc_status = IB_WC_GENERAL_ERR;
 }


 wc->status = wc_status;
 wc->vendor_err = 0;
 wc->src_qp = qp->id;
 wc->qp = &qp->ibqp;
 wc->wr_id = wr_id;

 QL_DPRINT12(ha, "exit status = 0x%x\n", wc_status);

 return;
}
