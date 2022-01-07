
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct sfxge_softc {int enp; TYPE_1__ media; } ;
struct ifnet {struct sfxge_softc* if_softc; } ;
struct ifmedia_entry {int ifm_media; } ;


 int B_TRUE ;
 int SFXGE_ADAPTER_LOCK (struct sfxge_softc*) ;
 int SFXGE_ADAPTER_UNLOCK (struct sfxge_softc*) ;
 int SFXGE_RUNNING (struct sfxge_softc*) ;
 int efx_mac_fcntl_set (int ,int ,int ) ;
 int efx_phy_adv_cap_set (int ,int ) ;
 int sfxge_phy_cap_mask (struct sfxge_softc*,int ,int *) ;
 int sfxge_port_wanted_fc (struct sfxge_softc*) ;

__attribute__((used)) static int
sfxge_media_change(struct ifnet *ifp)
{
 struct sfxge_softc *sc;
 struct ifmedia_entry *ifm;
 int rc;
 uint32_t phy_cap_mask;

 sc = ifp->if_softc;
 ifm = sc->media.ifm_cur;

 SFXGE_ADAPTER_LOCK(sc);

 if (!SFXGE_RUNNING(sc)) {
  rc = 0;
  goto out;
 }

 rc = efx_mac_fcntl_set(sc->enp, sfxge_port_wanted_fc(sc), B_TRUE);
 if (rc != 0)
  goto out;

 if ((rc = sfxge_phy_cap_mask(sc, ifm->ifm_media, &phy_cap_mask)) != 0)
  goto out;

 rc = efx_phy_adv_cap_set(sc->enp, phy_cap_mask);
out:
 SFXGE_ADAPTER_UNLOCK(sc);

 return (rc);
}
