
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ib_pd {int dummy; } ;
struct qlnxr_pd {struct ib_pd ibpd; TYPE_1__* uctx; int pd_id; } ;
struct qlnxr_dev {int pd_count; int * rdma_ctx; int * ha; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;
typedef int qlnx_host_t ;
struct TYPE_2__ {struct qlnxr_pd* pd; } ;


 int ENOMEM ;
 struct ib_pd* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int QL_DPRINT11 (int *,char*) ;
 int QL_DPRINT12 (int *,char*,...) ;
 int atomic_add_rel_32 (int *,int) ;
 int ecore_rdma_alloc_pd (int *,int *) ;
 int ecore_rdma_free_pd (int *,int ) ;
 struct qlnxr_dev* get_qlnxr_dev (struct ib_device*) ;
 TYPE_1__* get_qlnxr_ucontext (struct ib_ucontext*) ;
 int ib_copy_to_udata (struct ib_udata*,int *,int) ;
 int kfree (struct qlnxr_pd*) ;
 struct qlnxr_pd* kzalloc (int,int ) ;

struct ib_pd *
qlnxr_alloc_pd(struct ib_device *ibdev, struct ib_ucontext *context,
 struct ib_udata *udata)
{
 struct qlnxr_pd *pd = ((void*)0);
 u16 pd_id;
 int rc;
 struct qlnxr_dev *dev;
 qlnx_host_t *ha;

 dev = get_qlnxr_dev(ibdev);
 ha = dev->ha;

 QL_DPRINT12(ha, "ibdev = %p context = %p"
  " udata = %p enter\n", ibdev, context, udata);

 if (dev->rdma_ctx == ((void*)0)) {
  QL_DPRINT11(ha, "dev->rdma_ctx = NULL\n");
  rc = -1;
  goto err;
 }

 pd = kzalloc(sizeof(*pd), GFP_KERNEL);
 if (!pd) {
  rc = -ENOMEM;
  QL_DPRINT11(ha, "kzalloc(pd) = NULL\n");
  goto err;
 }

 rc = ecore_rdma_alloc_pd(dev->rdma_ctx, &pd_id);
 if (rc) {
  QL_DPRINT11(ha, "ecore_rdma_alloc_pd failed\n");
  goto err;
 }

 pd->pd_id = pd_id;

 if (udata && context) {

  rc = ib_copy_to_udata(udata, &pd->pd_id, sizeof(pd->pd_id));
  if (rc) {
   QL_DPRINT11(ha, "ib_copy_to_udata failed\n");
   ecore_rdma_free_pd(dev->rdma_ctx, pd_id);
   goto err;
  }

  pd->uctx = get_qlnxr_ucontext(context);
  pd->uctx->pd = pd;
 }

 atomic_add_rel_32(&dev->pd_count, 1);
 QL_DPRINT12(ha, "exit [pd, pd_id, pd_count] = [%p, 0x%x, %d]\n",
  pd, pd_id, dev->pd_count);

 return &pd->ibpd;

err:
 kfree(pd);
 QL_DPRINT12(ha, "exit -1\n");
 return ERR_PTR(rc);
}
