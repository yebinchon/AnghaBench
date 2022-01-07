
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ifnet {int dummy; } ;
struct bce_softc {int bce_flags; int bce_phy_flags; int bce_miibus; int bce_ifmedia; int bce_pulse_callout; struct ifnet* bce_ifp; } ;
typedef int device_t ;


 int BCE_DRV_MSG_CODE_UNLOAD ;
 int BCE_DRV_MSG_CODE_UNLOAD_LNK_DN ;
 int BCE_LOCK (struct bce_softc*) ;
 int BCE_NO_WOL_FLAG ;
 int BCE_PHY_REMOTE_CAP_FLAG ;
 int BCE_UNLOCK (struct bce_softc*) ;
 int BCE_VERBOSE_RESET ;
 int BCE_VERBOSE_UNLOAD ;
 int DBENTER (int) ;
 int DBEXIT (int) ;
 int bce_release_resources (struct bce_softc*) ;
 int bce_reset (struct bce_softc*,int ) ;
 int bce_stop (struct bce_softc*) ;
 int bus_generic_detach (int ) ;
 int callout_stop (int *) ;
 int device_delete_child (int ,int ) ;
 struct bce_softc* device_get_softc (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int ifmedia_removeall (int *) ;

__attribute__((used)) static int
bce_detach(device_t dev)
{
 struct bce_softc *sc = device_get_softc(dev);
 struct ifnet *ifp;
 u32 msg;

 DBENTER(BCE_VERBOSE_UNLOAD | BCE_VERBOSE_RESET);

 ifp = sc->bce_ifp;


 BCE_LOCK(sc);


 callout_stop(&sc->bce_pulse_callout);

 bce_stop(sc);
 if (sc->bce_flags & BCE_NO_WOL_FLAG)
  msg = BCE_DRV_MSG_CODE_UNLOAD_LNK_DN;
 else
  msg = BCE_DRV_MSG_CODE_UNLOAD;
 bce_reset(sc, msg);

 BCE_UNLOCK(sc);

 ether_ifdetach(ifp);


 if ((sc->bce_phy_flags & BCE_PHY_REMOTE_CAP_FLAG) != 0)
  ifmedia_removeall(&sc->bce_ifmedia);
 else {
  bus_generic_detach(dev);
  device_delete_child(dev, sc->bce_miibus);
 }


 bce_release_resources(sc);

 DBEXIT(BCE_VERBOSE_UNLOAD | BCE_VERBOSE_RESET);

 return(0);
}
