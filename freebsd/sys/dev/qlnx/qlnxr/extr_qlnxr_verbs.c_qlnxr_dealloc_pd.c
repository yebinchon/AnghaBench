
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_pd {int pd_id; } ;
struct qlnxr_dev {int pd_count; int rdma_ctx; int * ha; } ;
struct ib_pd {int device; } ;
typedef int qlnx_host_t ;


 int QL_DPRINT11 (int *,char*) ;
 int QL_DPRINT12 (int *,char*,...) ;
 int atomic_subtract_rel_32 (int *,int) ;
 int ecore_rdma_free_pd (int ,int ) ;
 struct qlnxr_dev* get_qlnxr_dev (int ) ;
 struct qlnxr_pd* get_qlnxr_pd (struct ib_pd*) ;
 int kfree (struct qlnxr_pd*) ;

int
qlnxr_dealloc_pd(struct ib_pd *ibpd)
{
 struct qlnxr_pd *pd;
 struct qlnxr_dev *dev;
 qlnx_host_t *ha;

 pd = get_qlnxr_pd(ibpd);
 dev = get_qlnxr_dev((ibpd->device));
 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 if (pd == ((void*)0)) {
  QL_DPRINT11(ha, "pd = NULL\n");
 } else {
  ecore_rdma_free_pd(dev->rdma_ctx, pd->pd_id);
  kfree(pd);
  atomic_subtract_rel_32(&dev->pd_count, 1);
  QL_DPRINT12(ha, "exit [pd, pd_id, pd_count] = [%p, 0x%x, %d]\n",
   pd, pd->pd_id, dev->pd_count);
 }

 QL_DPRINT12(ha, "exit\n");
 return 0;
}
