
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct disc_softc* if_softc; } ;
struct disc_softc {int dummy; } ;


 int M_DISC ;
 int bpfdetach (struct ifnet*) ;
 int free (struct disc_softc*,int ) ;
 int if_detach (struct ifnet*) ;
 int if_free (struct ifnet*) ;

__attribute__((used)) static void
disc_clone_destroy(struct ifnet *ifp)
{
 struct disc_softc *sc;

 sc = ifp->if_softc;

 bpfdetach(ifp);
 if_detach(ifp);
 if_free(ifp);

 free(sc, M_DISC);
}
