
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t link_mode; } ;
struct sfxge_softc {TYPE_1__ port; int enp; } ;
struct ifnet {struct sfxge_softc* if_softc; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;
typedef size_t efx_phy_media_type_t ;
typedef size_t efx_link_mode_t ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int SFXGE_ADAPTER_LOCK (struct sfxge_softc*) ;
 int SFXGE_ADAPTER_UNLOCK (struct sfxge_softc*) ;
 scalar_t__ SFXGE_LINK_UP (struct sfxge_softc*) ;
 scalar_t__ SFXGE_RUNNING (struct sfxge_softc*) ;
 int efx_phy_media_type_get (int ,size_t*) ;
 int ** sfxge_link_mode ;
 int sfxge_port_link_fc_ifm (struct sfxge_softc*) ;

__attribute__((used)) static void
sfxge_media_status(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct sfxge_softc *sc;
 efx_phy_media_type_t medium_type;
 efx_link_mode_t mode;

 sc = ifp->if_softc;
 SFXGE_ADAPTER_LOCK(sc);

 ifmr->ifm_status = IFM_AVALID;
 ifmr->ifm_active = IFM_ETHER;

 if (SFXGE_RUNNING(sc) && SFXGE_LINK_UP(sc)) {
  ifmr->ifm_status |= IFM_ACTIVE;

  efx_phy_media_type_get(sc->enp, &medium_type);
  mode = sc->port.link_mode;
  ifmr->ifm_active |= sfxge_link_mode[medium_type][mode];
  ifmr->ifm_active |= sfxge_port_link_fc_ifm(sc);
 }

 SFXGE_ADAPTER_UNLOCK(sc);
}
