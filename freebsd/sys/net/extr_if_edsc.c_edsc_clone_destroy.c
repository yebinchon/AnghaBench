
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct edsc_softc* if_softc; } ;
struct edsc_softc {int dummy; } ;


 int M_EDSC ;
 int ether_ifdetach (struct ifnet*) ;
 int free (struct edsc_softc*,int ) ;
 int if_free (struct ifnet*) ;

__attribute__((used)) static void
edsc_clone_destroy(struct ifnet *ifp)
{
 struct edsc_softc *sc = ifp->if_softc;




 ether_ifdetach(ifp);




 if_free(ifp);
 free(sc, M_EDSC);
}
