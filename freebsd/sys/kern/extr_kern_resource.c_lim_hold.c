
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plimit {int pl_refcnt; } ;


 int refcount_acquire (int *) ;

struct plimit *
lim_hold(struct plimit *limp)
{

 refcount_acquire(&limp->pl_refcnt);
 return (limp);
}
