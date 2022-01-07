
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vte_softc {int vte_miibus; } ;
struct mii_data {int mii_media_active; } ;


 int CSR_READ_2 (struct vte_softc*,int ) ;
 int CSR_WRITE_2 (struct vte_softc*,int ,int) ;
 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 int MCR0_FC_ENB ;
 int MCR0_FULL_DUPLEX ;
 int VTE_LOCK_ASSERT (struct vte_softc*) ;
 int VTE_MCR0 ;
 struct mii_data* device_get_softc (int ) ;

__attribute__((used)) static void
vte_mac_config(struct vte_softc *sc)
{
 struct mii_data *mii;
 uint16_t mcr;

 VTE_LOCK_ASSERT(sc);

 mii = device_get_softc(sc->vte_miibus);
 mcr = CSR_READ_2(sc, VTE_MCR0);
 mcr &= ~(MCR0_FC_ENB | MCR0_FULL_DUPLEX);
 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0) {
  mcr |= MCR0_FULL_DUPLEX;
 }
 CSR_WRITE_2(sc, VTE_MCR0, mcr);
}
