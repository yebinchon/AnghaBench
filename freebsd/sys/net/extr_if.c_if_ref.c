
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_refcount; } ;


 int refcount_acquire (int *) ;

void
if_ref(struct ifnet *ifp)
{


 refcount_acquire(&ifp->if_refcount);
}
