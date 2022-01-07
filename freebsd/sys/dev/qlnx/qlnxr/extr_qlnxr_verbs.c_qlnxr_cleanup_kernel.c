
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qlnxr_qp {int rqe_wr_id; int wqe_wr_id; } ;
struct qlnxr_dev {TYPE_1__* ha; } ;
struct TYPE_3__ {int qlnxr_debug; } ;
typedef TYPE_1__ qlnx_host_t ;


 int QL_DPRINT12 (TYPE_1__*,char*) ;
 int kfree (int ) ;
 scalar_t__ qlnxr_qp_has_rq (struct qlnxr_qp*) ;
 scalar_t__ qlnxr_qp_has_sq (struct qlnxr_qp*) ;

__attribute__((used)) static void
qlnxr_cleanup_kernel(struct qlnxr_dev *dev, struct qlnxr_qp *qp)
{
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 if (qlnxr_qp_has_sq(qp)) {
  QL_DPRINT12(ha, "freeing SQ\n");
  ha->qlnxr_debug = 1;

  ha->qlnxr_debug = 0;
  kfree(qp->wqe_wr_id);
 }

 if (qlnxr_qp_has_rq(qp)) {
  QL_DPRINT12(ha, "freeing RQ\n");
  ha->qlnxr_debug = 1;

  ha->qlnxr_debug = 0;
  kfree(qp->rqe_wr_id);
 }

 QL_DPRINT12(ha, "exit\n");
 return;
}
