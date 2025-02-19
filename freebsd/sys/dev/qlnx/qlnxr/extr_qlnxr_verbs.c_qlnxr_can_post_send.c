
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max_sges; int pbl; } ;
struct qlnxr_qp {int err_bitmap; TYPE_1__ sq; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int * ha; } ;
struct ib_send_wr {scalar_t__ num_sge; } ;
typedef int qlnx_host_t ;


 scalar_t__ QLNXR_MAX_SQE_ELEMENTS_PER_SQE ;
 int QLNXR_QP_ERR_BAD_SR ;
 int QLNXR_QP_ERR_SQ_FULL ;
 int QLNXR_QP_ERR_SQ_PBL_FULL ;
 int QL_DPRINT12 (int *,char*,struct qlnxr_qp*,struct ib_send_wr*,...) ;
 scalar_t__ ecore_chain_get_elem_left_u32 (int *) ;
 int qlnxr_wq_is_full (TYPE_1__*) ;

__attribute__((used)) static inline bool
qlnxr_can_post_send(struct qlnxr_qp *qp, struct ib_send_wr *wr)
{
 int wq_is_full, err_wr, pbl_is_full;
 struct qlnxr_dev *dev = qp->dev;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter[qp, wr] = [%p,%p]\n", qp, wr);


 err_wr = wr->num_sge > qp->sq.max_sges;
 wq_is_full = qlnxr_wq_is_full(&qp->sq);
 pbl_is_full = ecore_chain_get_elem_left_u32(&qp->sq.pbl) <
        QLNXR_MAX_SQE_ELEMENTS_PER_SQE;
 if (wq_is_full || err_wr || pbl_is_full) {
  if (wq_is_full &&
      !(qp->err_bitmap & QLNXR_QP_ERR_SQ_FULL)) {

   qp->err_bitmap |= QLNXR_QP_ERR_SQ_FULL;

   QL_DPRINT12(ha,
    "error: WQ is full. Post send on QP failed"
    " (this error appears only once) "
    "[qp, wr, qp->err_bitmap]=[%p, %p, 0x%x]\n",
    qp, wr, qp->err_bitmap);
  }

  if (err_wr &&
      !(qp->err_bitmap & QLNXR_QP_ERR_BAD_SR)) {

   qp->err_bitmap |= QLNXR_QP_ERR_BAD_SR;

   QL_DPRINT12(ha,
    "error: WQ is bad. Post send on QP failed"
    " (this error appears only once) "
    "[qp, wr, qp->err_bitmap]=[%p, %p, 0x%x]\n",
    qp, wr, qp->err_bitmap);
  }

  if (pbl_is_full &&
      !(qp->err_bitmap & QLNXR_QP_ERR_SQ_PBL_FULL)) {

   qp->err_bitmap |= QLNXR_QP_ERR_SQ_PBL_FULL;

   QL_DPRINT12(ha,
    "error: WQ PBL is full. Post send on QP failed"
    " (this error appears only once) "
    "[qp, wr, qp->err_bitmap]=[%p, %p, 0x%x]\n",
    qp, wr, qp->err_bitmap);
  }
  return 0;
 }
 QL_DPRINT12(ha, "exit[qp, wr] = [%p,%p]\n", qp, wr);
 return 1;
}
