
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int u64 ;
struct qlnxr_pd {int pd_id; } ;
struct TYPE_8__ {int pbl_size; int two_layered; } ;
struct TYPE_9__ {TYPE_1__* pbl_table; TYPE_2__ pbl_info; } ;
struct TYPE_10__ {int itid; int key; int local_read; int local_write; int remote_read; int remote_write; int remote_atomic; int mw_bind; int zbva; int phy_mr; int dma_mr; void* vaddr; void* length; scalar_t__ fbo; void* page_size_log; void* pbl_page_size_log; int pbl_two_level; int pbl_ptr; int pd; int tid_type; } ;
struct ib_mr {int lkey; int rkey; } ;
struct qlnxr_mr {TYPE_3__ info; TYPE_6__ hw_mr; struct ib_mr ibmr; int * iova_start; int type; } ;
struct qlnxr_dev {int rdma_ctx; int * ha; } ;
struct ib_phys_buf {int dummy; } ;
struct ib_pd {int device; } ;
typedef int qlnx_host_t ;
struct TYPE_7__ {int pa; } ;


 int ECORE_RDMA_TID_REGISTERED_MR ;
 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int PAGE_SIZE ;
 int QLNXR_MR_KERNEL ;
 int QL_DPRINT11 (int *,char*,...) ;
 int QL_DPRINT12 (int *,char*,...) ;
 int ecore_rdma_alloc_tid (int ,int*) ;
 int ecore_rdma_free_tid (int ,int) ;
 int ecore_rdma_register_tid (int ,TYPE_6__*) ;
 struct qlnxr_dev* get_qlnxr_dev (int ) ;
 struct qlnxr_pd* get_qlnxr_pd (struct ib_pd*) ;
 void* ilog2 (int ) ;
 int kfree (struct qlnxr_mr*) ;
 struct qlnxr_mr* kzalloc (int,int ) ;
 int qlnxr_free_pbl (struct qlnxr_dev*,TYPE_2__*,TYPE_1__*) ;
 size_t qlnxr_get_num_pages (int *,struct ib_phys_buf*,int) ;
 int qlnxr_init_mr_info (struct qlnxr_dev*,TYPE_3__*,size_t,int) ;
 int qlnxr_populate_phys_mem_pbls (struct qlnxr_dev*,struct ib_phys_buf*,int,TYPE_1__*,TYPE_2__*) ;
 int qlnxr_validate_phys_buf_list (int *,struct ib_phys_buf*,int,void**) ;

struct ib_mr *
qlnxr_reg_kernel_mr(struct ib_pd *ibpd,
 struct ib_phys_buf *buf_list,
 int buf_cnt, int acc, u64 *iova_start)
{
 int rc = -ENOMEM;
 struct qlnxr_dev *dev = get_qlnxr_dev((ibpd->device));
 struct qlnxr_mr *mr;
 struct qlnxr_pd *pd;
 qlnx_host_t *ha;
 size_t num_pages = 0;
 uint64_t length;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 pd = get_qlnxr_pd(ibpd);

 QL_DPRINT12(ha, "pd = %d buf_list = %p, buf_cnt = %d,"
  " iova_start = %p, acc = %d\n",
  pd->pd_id, buf_list, buf_cnt, iova_start, acc);







 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr) {
  QL_DPRINT11(ha, "kzalloc(mr) failed\n");
  return ERR_PTR(rc);
 }

 mr->type = QLNXR_MR_KERNEL;
 mr->iova_start = iova_start;

 rc = qlnxr_validate_phys_buf_list(ha, buf_list, buf_cnt, &length);
 if (rc)
  goto err0;

 num_pages = qlnxr_get_num_pages(ha, buf_list, buf_cnt);
 if (!num_pages)
  goto err0;

 rc = qlnxr_init_mr_info(dev, &mr->info, num_pages, 1);
 if (rc) {
  QL_DPRINT11(ha,
   "qlnxr_init_mr_info failed [%d]\n", rc);
  goto err1;
 }

 qlnxr_populate_phys_mem_pbls(dev, buf_list, buf_cnt, mr->info.pbl_table,
     &mr->info.pbl_info);

 rc = ecore_rdma_alloc_tid(dev->rdma_ctx, &mr->hw_mr.itid);

 if (rc) {
  QL_DPRINT11(ha, "roce alloc tid returned an error %d\n", rc);
  goto err1;
 }


 mr->hw_mr.tid_type = ECORE_RDMA_TID_REGISTERED_MR;
 mr->hw_mr.key = 0;
 mr->hw_mr.pd = pd->pd_id;
 mr->hw_mr.local_read = 1;
 mr->hw_mr.local_write = (acc & IB_ACCESS_LOCAL_WRITE) ? 1 : 0;
 mr->hw_mr.remote_read = (acc & IB_ACCESS_REMOTE_READ) ? 1 : 0;
 mr->hw_mr.remote_write = (acc & IB_ACCESS_REMOTE_WRITE) ? 1 : 0;
 mr->hw_mr.remote_atomic = (acc & IB_ACCESS_REMOTE_ATOMIC) ? 1 : 0;
 mr->hw_mr.mw_bind = 0;
 mr->hw_mr.pbl_ptr = mr->info.pbl_table[0].pa;
 mr->hw_mr.pbl_two_level = mr->info.pbl_info.two_layered;
 mr->hw_mr.pbl_page_size_log = ilog2(mr->info.pbl_info.pbl_size);
 mr->hw_mr.page_size_log = ilog2(PAGE_SIZE);

 mr->hw_mr.fbo = 0;

 mr->hw_mr.length = length;
 mr->hw_mr.vaddr = (uint64_t)iova_start;
 mr->hw_mr.zbva = 0;
 mr->hw_mr.phy_mr = 0;
 mr->hw_mr.dma_mr = 0;

 rc = ecore_rdma_register_tid(dev->rdma_ctx, &mr->hw_mr);
 if (rc) {
  QL_DPRINT11(ha, "roce register tid returned an error %d\n", rc);
  goto err2;
 }

 mr->ibmr.lkey = mr->hw_mr.itid << 8 | mr->hw_mr.key;
 if (mr->hw_mr.remote_write || mr->hw_mr.remote_read ||
  mr->hw_mr.remote_atomic)
  mr->ibmr.rkey = mr->hw_mr.itid << 8 | mr->hw_mr.key;

 QL_DPRINT12(ha, "lkey: %x\n", mr->ibmr.lkey);

 return (&mr->ibmr);

err2:
 ecore_rdma_free_tid(dev->rdma_ctx, mr->hw_mr.itid);
err1:
 qlnxr_free_pbl(dev, &mr->info.pbl_info, mr->info.pbl_table);
err0:
 kfree(mr);

 QL_DPRINT12(ha, "exit [%d]\n", rc);
 return (ERR_PTR(rc));
}
