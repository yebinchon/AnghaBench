
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigacts {int ps_refcnt; } ;


 int refcount_acquire (int *) ;

struct sigacts *
sigacts_hold(struct sigacts *ps)
{

 refcount_acquire(&ps->ps_refcnt);
 return (ps);
}
