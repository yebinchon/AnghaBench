
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loginclass {int lc_refcount; } ;


 int refcount_acquire (int *) ;

void
loginclass_hold(struct loginclass *lc)
{

 refcount_acquire(&lc->lc_refcount);
}
