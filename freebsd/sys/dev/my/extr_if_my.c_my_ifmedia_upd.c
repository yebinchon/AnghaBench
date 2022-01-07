
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmedia {int ifm_media; } ;
struct my_softc {struct ifmedia ifmedia; } ;
struct ifnet {struct my_softc* if_softc; } ;


 int EINVAL ;
 scalar_t__ IFM_AUTO ;
 scalar_t__ IFM_ETHER ;
 scalar_t__ IFM_SUBTYPE (int ) ;
 scalar_t__ IFM_TYPE (int ) ;
 int MY_FLAG_SCHEDDELAY ;
 int MY_LOCK (struct my_softc*) ;
 int MY_UNLOCK (struct my_softc*) ;
 int my_autoneg_mii (struct my_softc*,int ,int) ;
 int my_setmode_mii (struct my_softc*,int ) ;

__attribute__((used)) static int
my_ifmedia_upd(struct ifnet * ifp)
{
 struct my_softc *sc;
 struct ifmedia *ifm;

 sc = ifp->if_softc;
 MY_LOCK(sc);
 ifm = &sc->ifmedia;
 if (IFM_TYPE(ifm->ifm_media) != IFM_ETHER) {
  MY_UNLOCK(sc);
  return (EINVAL);
 }
 if (IFM_SUBTYPE(ifm->ifm_media) == IFM_AUTO)
  my_autoneg_mii(sc, MY_FLAG_SCHEDDELAY, 1);
 else
  my_setmode_mii(sc, ifm->ifm_media);
 MY_UNLOCK(sc);
 return (0);
}
