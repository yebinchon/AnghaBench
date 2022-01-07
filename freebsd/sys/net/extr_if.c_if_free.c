
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_epoch_ctx; int if_refcount; int if_index; int if_xname; int if_vnet; int if_flags; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET_QUIET (int ) ;
 int IFF_DYING ;
 int IFNET_WLOCK () ;
 int IFNET_WUNLOCK () ;
 int KASSERT (int,char*) ;
 int epoch_call (int ,int *,int ) ;
 int if_destroy ;
 int ifindex_free_locked (int ) ;
 struct ifnet* ifnet_byindex (int ) ;
 int net_epoch_preempt ;
 scalar_t__ refcount_release (int *) ;

void
if_free(struct ifnet *ifp)
{

 ifp->if_flags |= IFF_DYING;

 CURVNET_SET_QUIET(ifp->if_vnet);
 IFNET_WLOCK();
 KASSERT(ifp == ifnet_byindex(ifp->if_index),
     ("%s: freeing unallocated ifnet", ifp->if_xname));

 ifindex_free_locked(ifp->if_index);
 IFNET_WUNLOCK();

 if (refcount_release(&ifp->if_refcount))
  epoch_call(net_epoch_preempt, &ifp->if_epoch_ctx, if_destroy);
 CURVNET_RESTORE();
}
