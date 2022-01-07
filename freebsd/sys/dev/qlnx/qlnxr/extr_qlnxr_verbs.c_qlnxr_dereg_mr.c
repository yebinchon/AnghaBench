
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pbl_table; int pbl_info; } ;
struct qlnxr_mr {scalar_t__ type; struct qlnxr_mr* pages; scalar_t__ umem; TYPE_1__ info; } ;
struct qlnxr_dev {int * ha; } ;
struct ib_mr {int device; } ;
typedef int qlnx_host_t ;


 scalar_t__ QLNXR_MR_DMA ;
 scalar_t__ QLNXR_MR_FRMR ;
 int QL_DPRINT12 (int *,char*) ;
 struct qlnxr_dev* get_qlnxr_dev (int ) ;
 struct qlnxr_mr* get_qlnxr_mr (struct ib_mr*) ;
 int ib_umem_release (scalar_t__) ;
 int kfree (struct qlnxr_mr*) ;
 int qlnxr_free_pbl (struct qlnxr_dev*,int *,int ) ;

int
qlnxr_dereg_mr(struct ib_mr *ib_mr)
{
 struct qlnxr_mr *mr = get_qlnxr_mr(ib_mr);
 struct qlnxr_dev *dev = get_qlnxr_dev((ib_mr->device));
 int rc = 0;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 if ((mr->type != QLNXR_MR_DMA) && (mr->type != QLNXR_MR_FRMR))
  qlnxr_free_pbl(dev, &mr->info.pbl_info, mr->info.pbl_table);


 if (mr->umem)
  ib_umem_release(mr->umem);

 kfree(mr->pages);

 kfree(mr);

 QL_DPRINT12(ha, "exit\n");
 return rc;
}
