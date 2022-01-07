
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct gre_softc* if_softc; } ;
struct gre_softc {int dummy; } ;


 int GRE_WAIT () ;
 int M_GRE ;
 int bpfdetach (struct ifnet*) ;
 int free (struct gre_softc*,int ) ;
 int gre_delete_tunnel (struct gre_softc*) ;
 int gre_ioctl_sx ;
 int if_detach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
gre_clone_destroy(struct ifnet *ifp)
{
 struct gre_softc *sc;

 sx_xlock(&gre_ioctl_sx);
 sc = ifp->if_softc;
 gre_delete_tunnel(sc);
 bpfdetach(ifp);
 if_detach(ifp);
 ifp->if_softc = ((void*)0);
 sx_xunlock(&gre_ioctl_sx);

 GRE_WAIT();
 if_free(ifp);
 free(sc, M_GRE);
}
