
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_pd {TYPE_1__* device; int usecnt; int * __internal_mr; } ;
struct TYPE_2__ {int (* dereg_mr ) (int *) ;int (* dealloc_pd ) (struct ib_pd*) ;} ;


 int WARN_ON (int) ;
 int WARN_ONCE (int,char*) ;
 int atomic_read (int *) ;
 int stub1 (int *) ;
 int stub2 (struct ib_pd*) ;

void ib_dealloc_pd(struct ib_pd *pd)
{
 int ret;

 if (pd->__internal_mr) {
  ret = pd->device->dereg_mr(pd->__internal_mr);
  WARN_ON(ret);
  pd->__internal_mr = ((void*)0);
 }



 WARN_ON(atomic_read(&pd->usecnt));



 ret = pd->device->dealloc_pd(pd);
 WARN_ONCE(ret, "Infiniband HW driver failed dealloc_pd");
}
