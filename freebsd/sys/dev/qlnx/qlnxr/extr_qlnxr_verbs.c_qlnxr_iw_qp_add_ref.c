
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlnxr_qp {int refcnt; TYPE_1__* dev; } ;
struct ib_qp {int dummy; } ;
typedef int qlnx_host_t ;
struct TYPE_2__ {int * ha; } ;


 int QL_DPRINT12 (int *,char*,...) ;
 int atomic_inc (int *) ;
 struct qlnxr_qp* get_qlnxr_qp (struct ib_qp*) ;

void
qlnxr_iw_qp_add_ref(struct ib_qp *ibqp)
{
 struct qlnxr_qp *qp = get_qlnxr_qp(ibqp);
 qlnx_host_t *ha;

 ha = qp->dev->ha;

 QL_DPRINT12(ha, "enter ibqp = %p\n", ibqp);

 atomic_inc(&qp->refcnt);

 QL_DPRINT12(ha, "exit \n");
 return;
}
