
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmedia {int ifm_media; } ;
struct xl_softc {int xl_media; struct ifmedia ifmedia; int * xl_miibus; } ;
struct mii_data {struct ifmedia mii_media; } ;
struct ifnet {int if_drv_flags; struct xl_softc* if_softc; } ;


 int IFF_DRV_RUNNING ;




 int IFM_SUBTYPE (int ) ;
 int XL_LOCK (struct xl_softc*) ;
 int XL_MEDIAOPT_BT4 ;
 int XL_MEDIAOPT_BTX ;
 int XL_MEDIAOPT_MII ;
 int XL_UNLOCK (struct xl_softc*) ;
 struct mii_data* device_get_softc (int *) ;
 int xl_init_locked (struct xl_softc*) ;
 int xl_setmode (struct xl_softc*,int ) ;

__attribute__((used)) static int
xl_ifmedia_upd(struct ifnet *ifp)
{
 struct xl_softc *sc = ifp->if_softc;
 struct ifmedia *ifm = ((void*)0);
 struct mii_data *mii = ((void*)0);

 XL_LOCK(sc);

 if (sc->xl_miibus != ((void*)0))
  mii = device_get_softc(sc->xl_miibus);
 if (mii == ((void*)0))
  ifm = &sc->ifmedia;
 else
  ifm = &mii->mii_media;

 switch (IFM_SUBTYPE(ifm->ifm_media)) {
 case 131:
 case 128:
 case 130:
 case 129:
  xl_setmode(sc, ifm->ifm_media);
  XL_UNLOCK(sc);
  return (0);
 }

 if (sc->xl_media & XL_MEDIAOPT_MII ||
     sc->xl_media & XL_MEDIAOPT_BTX ||
     sc->xl_media & XL_MEDIAOPT_BT4) {
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  xl_init_locked(sc);
 } else {
  xl_setmode(sc, ifm->ifm_media);
 }

 XL_UNLOCK(sc);

 return (0);
}
