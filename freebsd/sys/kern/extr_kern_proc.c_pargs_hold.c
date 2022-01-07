
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pargs {int ar_ref; } ;


 int refcount_acquire (int *) ;

void
pargs_hold(struct pargs *pa)
{

 if (pa == ((void*)0))
  return;
 refcount_acquire(&pa->ar_ref);
}
