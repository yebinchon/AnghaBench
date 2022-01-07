
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int umem; int pbl_tbl; int pbl_info; } ;
struct qlnxr_srq {int prod_umem; TYPE_1__ usrq; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int * ha; } ;
typedef int qlnx_host_t ;


 int QL_DPRINT12 (int *,char*) ;
 int ib_umem_release (int ) ;
 int qlnxr_free_pbl (struct qlnxr_dev*,int *,int ) ;

__attribute__((used)) static void
qlnxr_free_srq_user_params(struct qlnxr_srq *srq)
{
 struct qlnxr_dev *dev = srq->dev;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 qlnxr_free_pbl(srq->dev, &srq->usrq.pbl_info, srq->usrq.pbl_tbl);
 ib_umem_release(srq->usrq.umem);
 ib_umem_release(srq->prod_umem);

 QL_DPRINT12(ha, "exit\n");
 return;
}
