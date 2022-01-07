
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_multi {struct ifmultiaddr* inm_ifma; struct ifnet* inm_ifp; } ;
struct ifnet {int if_xname; int if_multiaddrs; } ;
struct ifmultiaddr {int ifma_flags; scalar_t__ ifma_refcount; struct ifnet* ifma_ifp; struct ifmultiaddr* ifma_llifma; } ;


 int CK_STAILQ_REMOVE (int *,struct ifmultiaddr*,int ,int ) ;
 int IFMA_F_ENQUEUED ;
 int IF_ADDR_WLOCK_ASSERT (struct ifnet*) ;
 int MCDPRINTF (char*,struct ifmultiaddr*,int ) ;
 int MPASS (int) ;
 int if_freemulti (struct ifmultiaddr*) ;
 int if_ref (struct ifnet*) ;
 int ifma_link ;
 int ifma_restart ;
 int ifmultiaddr ;

void
inm_disconnect(struct in_multi *inm)
{
 struct ifnet *ifp;
 struct ifmultiaddr *ifma, *ll_ifma;

 ifp = inm->inm_ifp;
 IF_ADDR_WLOCK_ASSERT(ifp);
 ifma = inm->inm_ifma;

 if_ref(ifp);
 if (ifma->ifma_flags & IFMA_F_ENQUEUED) {
  CK_STAILQ_REMOVE(&ifp->if_multiaddrs, ifma, ifmultiaddr, ifma_link);
  ifma->ifma_flags &= ~IFMA_F_ENQUEUED;
 }
 MCDPRINTF("removed ifma: %p from %s\n", ifma, ifp->if_xname);
 if ((ll_ifma = ifma->ifma_llifma) != ((void*)0)) {
  MPASS(ifma != ll_ifma);
  ifma->ifma_llifma = ((void*)0);
  MPASS(ll_ifma->ifma_llifma == ((void*)0));
  MPASS(ll_ifma->ifma_ifp == ifp);
  if (--ll_ifma->ifma_refcount == 0) {
   if (ll_ifma->ifma_flags & IFMA_F_ENQUEUED) {
    CK_STAILQ_REMOVE(&ifp->if_multiaddrs, ll_ifma, ifmultiaddr, ifma_link);
    ll_ifma->ifma_flags &= ~IFMA_F_ENQUEUED;
   }
   MCDPRINTF("removed ll_ifma: %p from %s\n", ll_ifma, ifp->if_xname);
   if_freemulti(ll_ifma);
   ifma_restart = 1;
  }
 }
}
