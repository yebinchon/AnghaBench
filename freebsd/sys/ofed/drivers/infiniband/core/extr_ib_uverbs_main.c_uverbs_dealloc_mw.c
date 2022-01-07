
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_pd {int usecnt; } ;
struct ib_mw {TYPE_1__* device; struct ib_pd* pd; } ;
struct TYPE_2__ {int (* dealloc_mw ) (struct ib_mw*) ;} ;


 int atomic_dec (int *) ;
 int stub1 (struct ib_mw*) ;

int uverbs_dealloc_mw(struct ib_mw *mw)
{
 struct ib_pd *pd = mw->pd;
 int ret;

 ret = mw->device->dealloc_mw(mw);
 if (!ret)
  atomic_dec(&pd->usecnt);
 return ret;
}
