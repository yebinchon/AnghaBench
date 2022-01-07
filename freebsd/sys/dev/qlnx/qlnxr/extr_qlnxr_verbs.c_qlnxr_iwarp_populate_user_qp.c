
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pbl_info; TYPE_3__* pbl_tbl; int umem; } ;
struct TYPE_4__ {int pbl_info; TYPE_3__* pbl_tbl; int umem; } ;
struct qlnxr_qp {TYPE_2__ urq; int srq; TYPE_1__ usq; } ;
struct qlnxr_dev {int * ha; } ;
struct ecore_rdma_create_qp_out_params {int rq_pbl_phys; int rq_pbl_virt; int sq_pbl_phys; int sq_pbl_virt; } ;
typedef int qlnx_host_t ;
struct TYPE_6__ {int pa; int va; } ;


 int QL_DPRINT11 (int *,char*,int ) ;
 int QL_DPRINT12 (int *,char*) ;
 int qlnxr_populate_pbls (struct qlnxr_dev*,int ,TYPE_3__*,int *) ;

__attribute__((used)) static inline void
qlnxr_iwarp_populate_user_qp(struct qlnxr_dev *dev,
 struct qlnxr_qp *qp,
 struct ecore_rdma_create_qp_out_params *out_params)
{
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 qp->usq.pbl_tbl->va = out_params->sq_pbl_virt;
 qp->usq.pbl_tbl->pa = out_params->sq_pbl_phys;

 qlnxr_populate_pbls(dev, qp->usq.umem, qp->usq.pbl_tbl,
      &qp->usq.pbl_info);

 if (qp->srq) {
  QL_DPRINT11(ha, "qp->srq = %p\n", qp->srq);
  return;
 }

 qp->urq.pbl_tbl->va = out_params->rq_pbl_virt;
 qp->urq.pbl_tbl->pa = out_params->rq_pbl_phys;

 qlnxr_populate_pbls(dev, qp->urq.umem, qp->urq.pbl_tbl,
      &qp->urq.pbl_info);

 QL_DPRINT12(ha, "exit\n");
 return;
}
