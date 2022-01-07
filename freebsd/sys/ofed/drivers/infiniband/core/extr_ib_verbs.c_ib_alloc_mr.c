
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ib_pd {int usecnt; TYPE_1__* device; } ;
struct ib_mr {int need_inval; int * uobject; struct ib_pd* pd; TYPE_1__* device; } ;
typedef enum ib_mr_type { ____Placeholder_ib_mr_type } ib_mr_type ;
struct TYPE_2__ {struct ib_mr* (* alloc_mr ) (struct ib_pd*,int,int ) ;} ;


 int ENOSYS ;
 struct ib_mr* ERR_PTR (int ) ;
 int IS_ERR (struct ib_mr*) ;
 int atomic_inc (int *) ;
 struct ib_mr* stub1 (struct ib_pd*,int,int ) ;

struct ib_mr *ib_alloc_mr(struct ib_pd *pd,
     enum ib_mr_type mr_type,
     u32 max_num_sg)
{
 struct ib_mr *mr;

 if (!pd->device->alloc_mr)
  return ERR_PTR(-ENOSYS);

 mr = pd->device->alloc_mr(pd, mr_type, max_num_sg);
 if (!IS_ERR(mr)) {
  mr->device = pd->device;
  mr->pd = pd;
  mr->uobject = ((void*)0);
  atomic_inc(&pd->usecnt);
  mr->need_inval = 0;
 }

 return mr;
}
