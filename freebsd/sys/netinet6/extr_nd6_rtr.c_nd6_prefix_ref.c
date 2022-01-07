
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_prefix {int ndpr_refcnt; } ;


 int refcount_acquire (int *) ;

void
nd6_prefix_ref(struct nd_prefix *pr)
{

 refcount_acquire(&pr->ndpr_refcnt);
}
