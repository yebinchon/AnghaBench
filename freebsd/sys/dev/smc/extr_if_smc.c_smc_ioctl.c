
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct smc_softc {int (* smc_mii_mediaioctl ) (struct smc_softc*,struct ifreq*,int) ;int (* smc_mii_mediachg ) (struct smc_softc*) ;} ;
struct ifreq {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; struct smc_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;





 int SMC_LOCK (struct smc_softc*) ;
 int SMC_UNLOCK (struct smc_softc*) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int smc_init (struct smc_softc*) ;
 int smc_stop (struct smc_softc*) ;
 int stub1 (struct smc_softc*) ;
 int stub2 (struct smc_softc*,struct ifreq*,int) ;

__attribute__((used)) static int
smc_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct smc_softc *sc;
 int error;

 sc = ifp->if_softc;
 error = 0;

 switch (cmd) {
 case 129:
  if ((ifp->if_flags & IFF_UP) == 0 &&
      (ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
   SMC_LOCK(sc);
   smc_stop(sc);
   SMC_UNLOCK(sc);
  } else {
   smc_init(sc);
   if (sc->smc_mii_mediachg != ((void*)0))
    sc->smc_mii_mediachg(sc);
  }
  break;

 case 132:
 case 131:





  error = EINVAL;
  break;

 case 130:
 case 128:
  if (sc->smc_mii_mediaioctl == ((void*)0)) {
   error = EINVAL;
   break;
  }
  sc->smc_mii_mediaioctl(sc, (struct ifreq *)data, cmd);
  break;

 default:
  error = ether_ioctl(ifp, cmd, data);
  break;
 }

 return (error);
}
