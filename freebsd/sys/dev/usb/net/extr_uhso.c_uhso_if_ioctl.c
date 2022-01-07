
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct uhso_softc {int sc_mtx; } ;
struct ifnet {int if_flags; int if_drv_flags; struct uhso_softc* if_softc; } ;
typedef int caddr_t ;


 int EINVAL ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;




 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int uhso_if_init (struct uhso_softc*) ;
 int uhso_if_stop (struct uhso_softc*) ;

__attribute__((used)) static int
uhso_if_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct uhso_softc *sc;

 sc = ifp->if_softc;

 switch (cmd) {
 case 128:
  if (ifp->if_flags & IFF_UP) {
   if (!(ifp->if_drv_flags & IFF_DRV_RUNNING)) {
    uhso_if_init(sc);
   }
  }
  else {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
    mtx_lock(&sc->sc_mtx);
    uhso_if_stop(sc);
    mtx_unlock(&sc->sc_mtx);
   }
  }
  break;
 case 129:
 case 131:
 case 130:
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
