
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlnxr_qp {int qp_id; TYPE_1__* dev; int refcnt; } ;
struct ib_qp {int dummy; } ;
typedef int qlnx_host_t ;
struct TYPE_2__ {int * ha; } ;


 int QL_DPRINT12 (int *,char*,...) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 struct qlnxr_qp* get_qlnxr_qp (struct ib_qp*) ;
 int kfree (struct qlnxr_qp*) ;
 int qlnxr_idr_remove (TYPE_1__*,int ) ;

void
qlnxr_iw_qp_rem_ref(struct ib_qp *ibqp)
{
 struct qlnxr_qp *qp = get_qlnxr_qp(ibqp);
 qlnx_host_t *ha;

 ha = qp->dev->ha;

 QL_DPRINT12(ha, "enter ibqp = %p qp = %p\n", ibqp, qp);

 if (atomic_dec_and_test(&qp->refcnt)) {
  qlnxr_idr_remove(qp->dev, qp->qp_id);
  kfree(qp);
 }

 QL_DPRINT12(ha, "exit \n");
 return;
}
