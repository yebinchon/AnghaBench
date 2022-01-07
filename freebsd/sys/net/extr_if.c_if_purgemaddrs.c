
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_multiaddrs; } ;
struct ifmultiaddr {int dummy; } ;


 int CK_STAILQ_EMPTY (int *) ;
 struct ifmultiaddr* CK_STAILQ_FIRST (int *) ;
 int CK_STAILQ_REMOVE (int *,struct ifmultiaddr*,int ,int ) ;
 int IF_ADDR_WLOCK (struct ifnet*) ;
 int IF_ADDR_WUNLOCK (struct ifnet*) ;
 int if_delmulti_locked (struct ifnet*,struct ifmultiaddr*,int) ;
 int ifma_link ;
 int ifmultiaddr ;

__attribute__((used)) static void
if_purgemaddrs(struct ifnet *ifp)
{
 struct ifmultiaddr *ifma;

 IF_ADDR_WLOCK(ifp);
 while (!CK_STAILQ_EMPTY(&ifp->if_multiaddrs)) {
  ifma = CK_STAILQ_FIRST(&ifp->if_multiaddrs);
  CK_STAILQ_REMOVE(&ifp->if_multiaddrs, ifma, ifmultiaddr, ifma_link);
  if_delmulti_locked(ifp, ifma, 1);
 }
 IF_ADDR_WUNLOCK(ifp);
}
