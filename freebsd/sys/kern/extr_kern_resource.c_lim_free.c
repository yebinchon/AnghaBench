
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plimit {int pl_refcnt; } ;


 int M_PLIMIT ;
 int free (void*,int ) ;
 scalar_t__ refcount_release (int *) ;

void
lim_free(struct plimit *limp)
{

 if (refcount_release(&limp->pl_refcnt))
  free((void *)limp, M_PLIMIT);
}
