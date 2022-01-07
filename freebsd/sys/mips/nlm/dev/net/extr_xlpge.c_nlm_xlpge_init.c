
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_xlpge_softc {int xlpge_callout; scalar_t__ mii_bus; struct ifnet* xlpge_if; } ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int callout_reset (int *,int ,int ,struct nlm_xlpge_softc*) ;
 struct mii_data* device_get_softc (scalar_t__) ;
 int hz ;
 int mii_mediachg (struct mii_data*) ;
 int nlm_mii_pollstat ;
 int nlm_xlpge_gmac_config_speed (struct nlm_xlpge_softc*) ;
 int nlm_xlpge_port_enable (struct nlm_xlpge_softc*) ;

__attribute__((used)) static void
nlm_xlpge_init(void *addr)
{
 struct nlm_xlpge_softc *sc;
 struct ifnet *ifp;
 struct mii_data *mii = ((void*)0);

 sc = (struct nlm_xlpge_softc *)addr;
 ifp = sc->xlpge_if;

 if (ifp->if_drv_flags & IFF_DRV_RUNNING)
  return;

 if (sc->mii_bus) {
  mii = device_get_softc(sc->mii_bus);
  mii_mediachg(mii);
 }

 nlm_xlpge_gmac_config_speed(sc);
 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
 nlm_xlpge_port_enable(sc);


 callout_reset(&sc->xlpge_callout, hz, nlm_mii_pollstat, sc);
}
