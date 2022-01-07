
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qlnxr_pd {int pd_id; } ;
struct TYPE_8__ {int itid; int key; int local_read; int mw_bind; int zbva; int phy_mr; int dma_mr; scalar_t__ vaddr; scalar_t__ length; scalar_t__ fbo; int pbl_page_size_log; int pbl_two_level; scalar_t__ pbl_ptr; scalar_t__ remote_atomic; scalar_t__ remote_write; scalar_t__ remote_read; scalar_t__ local_write; int pd; int tid_type; } ;
struct TYPE_6__ {int lkey; int rkey; } ;
struct TYPE_5__ {int pbl_size; int two_layered; } ;
struct TYPE_7__ {TYPE_1__ pbl_info; } ;
struct qlnxr_mr {TYPE_4__ hw_mr; TYPE_2__ ibmr; TYPE_3__ info; int type; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int rdma_ctx; int * ha; } ;
struct ib_pd {int device; } ;
typedef int qlnx_host_t ;


 int ECORE_RDMA_TID_FMR ;
 int ENOMEM ;
 struct qlnxr_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int QLNXR_MR_FRMR ;
 int QL_DPRINT11 (int *,char*) ;
 int QL_DPRINT12 (int *,char*,...) ;
 int ecore_rdma_alloc_tid (int ,int*) ;
 int ecore_rdma_free_tid (int ,int) ;
 int ecore_rdma_register_tid (int ,TYPE_4__*) ;
 struct qlnxr_dev* get_qlnxr_dev (int ) ;
 struct qlnxr_pd* get_qlnxr_pd (struct ib_pd*) ;
 int ilog2 (int ) ;
 int kfree (struct qlnxr_mr*) ;
 struct qlnxr_mr* kzalloc (int,int ) ;
 int qlnxr_init_mr_info (struct qlnxr_dev*,TYPE_3__*,int,int) ;

__attribute__((used)) static struct qlnxr_mr *
__qlnxr_alloc_mr(struct ib_pd *ibpd, int max_page_list_len)
{
 struct qlnxr_pd *pd = get_qlnxr_pd(ibpd);
 struct qlnxr_dev *dev = get_qlnxr_dev((ibpd->device));
 struct qlnxr_mr *mr;
 int rc = -ENOMEM;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter ibpd = %p pd = %p "
  " pd_id = %d max_page_list_len = %d\n",
  ibpd, pd, pd->pd_id, max_page_list_len);

 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr) {
  QL_DPRINT11(ha, "kzalloc(mr) failed\n");
  return ERR_PTR(rc);
 }

 mr->dev = dev;
 mr->type = QLNXR_MR_FRMR;

 rc = qlnxr_init_mr_info(dev, &mr->info, max_page_list_len,
      1 );
 if (rc) {
  QL_DPRINT11(ha, "qlnxr_init_mr_info failed\n");
  goto err0;
 }

 rc = ecore_rdma_alloc_tid(dev->rdma_ctx, &mr->hw_mr.itid);
 if (rc) {
  QL_DPRINT11(ha, "ecore_rdma_alloc_tid failed\n");
  goto err0;
 }


 mr->hw_mr.tid_type = ECORE_RDMA_TID_FMR;
 mr->hw_mr.key = 0;
 mr->hw_mr.pd = pd->pd_id;
 mr->hw_mr.local_read = 1;
 mr->hw_mr.local_write = 0;
 mr->hw_mr.remote_read = 0;
 mr->hw_mr.remote_write = 0;
 mr->hw_mr.remote_atomic = 0;
 mr->hw_mr.mw_bind = 0;
 mr->hw_mr.pbl_ptr = 0;
 mr->hw_mr.pbl_two_level = mr->info.pbl_info.two_layered;
 mr->hw_mr.pbl_page_size_log = ilog2(mr->info.pbl_info.pbl_size);
 mr->hw_mr.fbo = 0;
 mr->hw_mr.length = 0;
 mr->hw_mr.vaddr = 0;
 mr->hw_mr.zbva = 0;
 mr->hw_mr.phy_mr = 1;
 mr->hw_mr.dma_mr = 0;

 rc = ecore_rdma_register_tid(dev->rdma_ctx, &mr->hw_mr);
 if (rc) {
  QL_DPRINT11(ha, "ecore_rdma_register_tid failed\n");
  goto err1;
 }

 mr->ibmr.lkey = mr->hw_mr.itid << 8 | mr->hw_mr.key;
 mr->ibmr.rkey = mr->ibmr.lkey;

 QL_DPRINT12(ha, "exit mr = %p mr->ibmr.lkey = 0x%x\n",
  mr, mr->ibmr.lkey);

 return mr;

err1:
 ecore_rdma_free_tid(dev->rdma_ctx, mr->hw_mr.itid);
err0:
 kfree(mr);

 QL_DPRINT12(ha, "exit\n");

 return ERR_PTR(rc);
}
