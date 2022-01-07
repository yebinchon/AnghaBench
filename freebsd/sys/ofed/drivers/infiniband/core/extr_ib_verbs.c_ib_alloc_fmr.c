
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_pd {int usecnt; TYPE_1__* device; } ;
struct ib_fmr_attr {int dummy; } ;
struct ib_fmr {struct ib_pd* pd; TYPE_1__* device; } ;
struct TYPE_2__ {struct ib_fmr* (* alloc_fmr ) (struct ib_pd*,int,struct ib_fmr_attr*) ;} ;


 int ENOSYS ;
 struct ib_fmr* ERR_PTR (int ) ;
 int IS_ERR (struct ib_fmr*) ;
 int atomic_inc (int *) ;
 struct ib_fmr* stub1 (struct ib_pd*,int,struct ib_fmr_attr*) ;

struct ib_fmr *ib_alloc_fmr(struct ib_pd *pd,
       int mr_access_flags,
       struct ib_fmr_attr *fmr_attr)
{
 struct ib_fmr *fmr;

 if (!pd->device->alloc_fmr)
  return ERR_PTR(-ENOSYS);

 fmr = pd->device->alloc_fmr(pd, mr_access_flags, fmr_attr);
 if (!IS_ERR(fmr)) {
  fmr->device = pd->device;
  fmr->pd = pd;
  atomic_inc(&pd->usecnt);
 }

 return fmr;
}
