
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * umem; } ;
struct TYPE_3__ {int * umem; } ;
struct qlnxr_qp {TYPE_2__ urq; TYPE_1__ usq; } ;
struct qlnxr_dev {int * ha; } ;
typedef int qlnx_host_t ;


 int QL_DPRINT12 (int *,char*) ;
 int ib_umem_release (int *) ;

__attribute__((used)) static void
qlnxr_cleanup_user(struct qlnxr_dev *dev, struct qlnxr_qp *qp)
{
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 if (qp->usq.umem)
  ib_umem_release(qp->usq.umem);

 qp->usq.umem = ((void*)0);

 if (qp->urq.umem)
  ib_umem_release(qp->urq.umem);

 qp->urq.umem = ((void*)0);

 QL_DPRINT12(ha, "exit\n");
 return;
}
