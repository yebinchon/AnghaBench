
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct ifreq {int ifr_mtu; } ;
struct ifnet {int if_mtu; struct dtsec_softc* if_softc; } ;
struct dtsec_softc {TYPE_2__* sc_mii; TYPE_1__* sc_ifnet; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_4__ {int mii_media; } ;
struct TYPE_3__ {int if_flags; } ;


 int DTSEC_LOCK (struct dtsec_softc*) ;
 int DTSEC_UNLOCK (struct dtsec_softc*) ;
 int EINVAL ;
 int IFF_UP ;




 int dtsec_if_disable_locked (struct dtsec_softc*) ;
 int dtsec_if_enable_locked (struct dtsec_softc*) ;
 int dtsec_set_mtu (struct dtsec_softc*,int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;

__attribute__((used)) static int
dtsec_if_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct dtsec_softc *sc;
 struct ifreq *ifr;
 int error;

 sc = ifp->if_softc;
 ifr = (struct ifreq *)data;
 error = 0;


 switch (command) {
 case 128:
  DTSEC_LOCK(sc);
  if (dtsec_set_mtu(sc, ifr->ifr_mtu))
   ifp->if_mtu = ifr->ifr_mtu;
  else
   error = EINVAL;
  DTSEC_UNLOCK(sc);
  break;
 case 130:
  DTSEC_LOCK(sc);

  if (sc->sc_ifnet->if_flags & IFF_UP)
   error = dtsec_if_enable_locked(sc);
  else
   error = dtsec_if_disable_locked(sc);

  DTSEC_UNLOCK(sc);
  break;

 case 131:
 case 129:
  error = ifmedia_ioctl(ifp, ifr, &sc->sc_mii->mii_media,
      command);
  break;

 default:
  error = ether_ioctl(ifp, command, data);
 }

 return (error);
}
