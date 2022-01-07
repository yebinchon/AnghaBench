
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct me_softc {int dummy; } ;
struct ifnet {struct me_softc* if_softc; } ;


 int ME_WAIT () ;
 int M_IFME ;
 int bpfdetach (struct ifnet*) ;
 int free (struct me_softc*,int ) ;
 int if_detach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int me_delete_tunnel (struct me_softc*) ;
 int me_ioctl_sx ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
me_clone_destroy(struct ifnet *ifp)
{
 struct me_softc *sc;

 sx_xlock(&me_ioctl_sx);
 sc = ifp->if_softc;
 me_delete_tunnel(sc);
 bpfdetach(ifp);
 if_detach(ifp);
 ifp->if_softc = ((void*)0);
 sx_xunlock(&me_ioctl_sx);

 ME_WAIT();
 if_free(ifp);
 free(sc, M_IFME);
}
