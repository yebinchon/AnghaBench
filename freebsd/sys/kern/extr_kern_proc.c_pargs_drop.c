
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pargs {int ar_ref; } ;


 int pargs_free (struct pargs*) ;
 scalar_t__ refcount_release (int *) ;

void
pargs_drop(struct pargs *pa)
{

 if (pa == ((void*)0))
  return;
 if (refcount_release(&pa->ar_ref))
  pargs_free(pa);
}
