
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct atse_softc {int atse_tick; int atse_flags; int atse_miibus; int atse_eth_addr; struct ifnet* atse_ifp; } ;


 int ATSE_FLAGS_LINK ;
 int ATSE_LOCK_ASSERT (struct atse_softc*) ;
 int ETHER_ADDR_LEN ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int * IF_LLADDR (struct ifnet*) ;
 int atse_reset (struct atse_softc*) ;
 int atse_rxfilter_locked (struct atse_softc*) ;
 int atse_stop_locked (struct atse_softc*) ;
 int atse_tick ;
 int bcopy (int *,int *,int ) ;
 int callout_reset (int *,int ,int ,struct atse_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_mediachg (struct mii_data*) ;

__attribute__((used)) static void
atse_init_locked(struct atse_softc *sc)
{
 struct ifnet *ifp;
 struct mii_data *mii;
 uint8_t *eaddr;

 ATSE_LOCK_ASSERT(sc);
 ifp = sc->atse_ifp;

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
  return;
 }






 eaddr = IF_LLADDR(sc->atse_ifp);
 bcopy(eaddr, &sc->atse_eth_addr, ETHER_ADDR_LEN);


 atse_stop_locked(sc);

 atse_reset(sc);


 atse_rxfilter_locked(sc);

 sc->atse_flags &= ATSE_FLAGS_LINK;

 mii = device_get_softc(sc->atse_miibus);

 sc->atse_flags &= ~ATSE_FLAGS_LINK;
 mii_mediachg(mii);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 callout_reset(&sc->atse_tick, hz, atse_tick, sc);
}
