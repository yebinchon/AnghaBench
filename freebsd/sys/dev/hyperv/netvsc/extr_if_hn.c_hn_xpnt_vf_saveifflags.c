
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int if_flags; int if_multiaddrs; } ;
struct hn_softc {TYPE_1__* hn_vf_ifp; struct ifnet* hn_ifp; } ;
struct TYPE_2__ {int if_flags; } ;


 int CK_STAILQ_EMPTY (int *) ;
 int HN_LOCK_ASSERT (struct hn_softc*) ;
 int IFF_ALLMULTI ;

__attribute__((used)) static void
hn_xpnt_vf_saveifflags(struct hn_softc *sc)
{
 struct ifnet *ifp = sc->hn_ifp;
 int allmulti = 0;

 HN_LOCK_ASSERT(sc);


 if (!CK_STAILQ_EMPTY(&ifp->if_multiaddrs))
  allmulti = IFF_ALLMULTI;


 sc->hn_vf_ifp->if_flags = ifp->if_flags | allmulti;
}
