
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qlnxr_qp {TYPE_2__* srq; } ;
struct qlnxr_pd {TYPE_1__* uctx; int pd_id; } ;
struct qlnxr_dev {int dpi; int * ha; } ;
struct ib_qp_init_attr {scalar_t__ sq_sig_type; int recv_cq; int send_cq; } ;
struct ecore_rdma_create_qp_in_params {int signal_all; int fmr_and_reserved_lkey; int use_srq; int srq_id; int rq_cq_id; scalar_t__ stats_queue; int sq_cq_id; int dpi; int pd; int qp_handle_async_hi; int qp_handle_async_lo; } ;
typedef int qlnx_host_t ;
struct TYPE_6__ {int icid; } ;
struct TYPE_5__ {int srq_id; } ;
struct TYPE_4__ {int dpi; } ;


 scalar_t__ IB_SIGNAL_ALL_WR ;
 int QL_DPRINT11 (int *,char*,int ,int) ;
 int QL_DPRINT12 (int *,char*) ;
 TYPE_3__* get_qlnxr_cq (int ) ;
 int lower_32_bits (uintptr_t) ;
 int upper_32_bits (uintptr_t) ;

__attribute__((used)) static inline void
qlnxr_init_common_qp_in_params(struct qlnxr_dev *dev,
 struct qlnxr_pd *pd,
 struct qlnxr_qp *qp,
 struct ib_qp_init_attr *attrs,
 bool fmr_and_reserved_lkey,
 struct ecore_rdma_create_qp_in_params *params)
{
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");


 params->qp_handle_async_lo = lower_32_bits((uintptr_t)qp);
 params->qp_handle_async_hi = upper_32_bits((uintptr_t)qp);

 params->signal_all = (attrs->sq_sig_type == IB_SIGNAL_ALL_WR);
 params->fmr_and_reserved_lkey = fmr_and_reserved_lkey;
 params->pd = pd->pd_id;
 params->dpi = pd->uctx ? pd->uctx->dpi : dev->dpi;
 params->sq_cq_id = get_qlnxr_cq(attrs->send_cq)->icid;
 params->stats_queue = 0;

 params->rq_cq_id = get_qlnxr_cq(attrs->recv_cq)->icid;

 if (qp->srq) {

  params->srq_id = qp->srq->srq_id;
  params->use_srq = 1;
  QL_DPRINT11(ha, "exit srq_id = 0x%x use_srq = 0x%x\n",
   params->srq_id, params->use_srq);
  return;
 }

 params->srq_id = 0;
 params->use_srq = 0;

 QL_DPRINT12(ha, "exit\n");
 return;
}
