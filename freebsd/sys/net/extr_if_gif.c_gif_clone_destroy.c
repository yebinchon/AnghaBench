
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct gif_softc* if_softc; } ;
struct gif_softc {int dummy; } ;


 int GIF_WAIT () ;
 int M_GIF ;
 int bpfdetach (struct ifnet*) ;
 int free (struct gif_softc*,int ) ;
 int gif_delete_tunnel (struct gif_softc*) ;
 int gif_ioctl_sx ;
 int if_detach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int ng_gif_detach_p (struct ifnet*) ;
 int stub1 (struct ifnet*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
gif_clone_destroy(struct ifnet *ifp)
{
 struct gif_softc *sc;

 sx_xlock(&gif_ioctl_sx);
 sc = ifp->if_softc;
 gif_delete_tunnel(sc);
 if (ng_gif_detach_p != ((void*)0))
  (*ng_gif_detach_p)(ifp);
 bpfdetach(ifp);
 if_detach(ifp);
 ifp->if_softc = ((void*)0);
 sx_xunlock(&gif_ioctl_sx);

 GIF_WAIT();
 if_free(ifp);
 free(sc, M_GIF);
}
