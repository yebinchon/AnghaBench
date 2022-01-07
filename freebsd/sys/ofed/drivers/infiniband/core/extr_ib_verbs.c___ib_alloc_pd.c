
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_pd {unsigned int flags; int need_inval; int rkey; struct ib_pd* __internal_mr; int unsafe_global_rkey; int lkey; int local_dma_lkey; int * uobject; struct ib_pd* pd; struct ib_device* device; int usecnt; } ;
struct ib_mr {unsigned int flags; int need_inval; int rkey; struct ib_mr* __internal_mr; int unsafe_global_rkey; int lkey; int local_dma_lkey; int * uobject; struct ib_mr* pd; struct ib_device* device; int usecnt; } ;
struct TYPE_2__ {int device_cap_flags; } ;
struct ib_device {TYPE_1__ attrs; struct ib_pd* (* get_dma_mr ) (struct ib_pd*,int) ;int local_dma_lkey; struct ib_pd* (* alloc_pd ) (struct ib_device*,int *,int *) ;} ;


 struct ib_pd* ERR_CAST (struct ib_pd*) ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int IB_DEVICE_LOCAL_DMA_LKEY ;
 unsigned int IB_PD_UNSAFE_GLOBAL_RKEY ;
 scalar_t__ IS_ERR (struct ib_pd*) ;
 int atomic_set (int *,int ) ;
 int ib_dealloc_pd (struct ib_pd*) ;
 int pr_warn (char*,char const*) ;
 struct ib_pd* stub1 (struct ib_device*,int *,int *) ;
 struct ib_pd* stub2 (struct ib_pd*,int) ;

struct ib_pd *__ib_alloc_pd(struct ib_device *device, unsigned int flags,
  const char *caller)
{
 struct ib_pd *pd;
 int mr_access_flags = 0;

 pd = device->alloc_pd(device, ((void*)0), ((void*)0));
 if (IS_ERR(pd))
  return pd;

 pd->device = device;
 pd->uobject = ((void*)0);
 pd->__internal_mr = ((void*)0);
 atomic_set(&pd->usecnt, 0);
 pd->flags = flags;

 if (device->attrs.device_cap_flags & IB_DEVICE_LOCAL_DMA_LKEY)
  pd->local_dma_lkey = device->local_dma_lkey;
 else
  mr_access_flags |= IB_ACCESS_LOCAL_WRITE;

 if (flags & IB_PD_UNSAFE_GLOBAL_RKEY) {
  pr_warn("%s: enabling unsafe global rkey\n", caller);
  mr_access_flags |= IB_ACCESS_REMOTE_READ | IB_ACCESS_REMOTE_WRITE;
 }

 if (mr_access_flags) {
  struct ib_mr *mr;

  mr = pd->device->get_dma_mr(pd, mr_access_flags);
  if (IS_ERR(mr)) {
   ib_dealloc_pd(pd);
   return ERR_CAST(mr);
  }

  mr->device = pd->device;
  mr->pd = pd;
  mr->uobject = ((void*)0);
  mr->need_inval = 0;

  pd->__internal_mr = mr;

  if (!(device->attrs.device_cap_flags & IB_DEVICE_LOCAL_DMA_LKEY))
   pd->local_dma_lkey = pd->__internal_mr->lkey;

  if (flags & IB_PD_UNSAFE_GLOBAL_RKEY)
   pd->unsafe_global_rkey = pd->__internal_mr->rkey;
 }

 return pd;
}
