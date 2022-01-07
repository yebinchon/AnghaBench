
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ure_softc {int sc_flags; int sc_ue; int sc_mtx; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
typedef int device_t ;


 struct mii_data* GET_MII (struct ure_softc*) ;
 int IFF_DRV_RUNNING ;



 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_SUBTYPE (int ) ;
 int URE_FLAG_8152 ;
 int URE_FLAG_LINK ;
 int URE_LOCK (struct ure_softc*) ;
 int URE_UNLOCK (struct ure_softc*) ;
 struct ure_softc* device_get_softc (int ) ;
 int mtx_owned (int *) ;
 struct ifnet* uether_getifp (int *) ;

__attribute__((used)) static void
ure_miibus_statchg(device_t dev)
{
 struct ure_softc *sc;
 struct mii_data *mii;
 struct ifnet *ifp;
 int locked;

 sc = device_get_softc(dev);
 mii = GET_MII(sc);
 locked = mtx_owned(&sc->sc_mtx);
 if (!locked)
  URE_LOCK(sc);

 ifp = uether_getifp(&sc->sc_ue);
 if (mii == ((void*)0) || ifp == ((void*)0) ||
     (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  goto done;

 sc->sc_flags &= ~URE_FLAG_LINK;
 if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
     (IFM_ACTIVE | IFM_AVALID)) {
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 128:
  case 129:
   sc->sc_flags |= URE_FLAG_LINK;
   break;
  case 130:
   if ((sc->sc_flags & URE_FLAG_8152) != 0)
    break;
   sc->sc_flags |= URE_FLAG_LINK;
   break;
  default:
   break;
  }
 }


 if ((sc->sc_flags & URE_FLAG_LINK) == 0)
  goto done;
done:
 if (!locked)
  URE_UNLOCK(sc);
}
