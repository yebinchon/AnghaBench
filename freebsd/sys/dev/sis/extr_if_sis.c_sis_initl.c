
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sis_softc {scalar_t__ sis_type; scalar_t__ sis_srr; scalar_t__ sis_manual_pad; int sis_stat_ch; int sis_flags; int sis_tx_paddr; int sis_rx_paddr; int sis_dev; struct ifnet* sis_ifp; int sis_miibus; } ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; int if_capenable; } ;


 int CSR_READ_4 (struct sis_softc*,int ) ;
 int CSR_WRITE_4 (struct sis_softc*,int ,int) ;
 int IFCAP_POLLING ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int* IF_LLADDR (struct ifnet*) ;
 int NS_FILTADDR_PAR0 ;
 int NS_FILTADDR_PAR1 ;
 int NS_FILTADDR_PAR2 ;
 int NS_IHR ;
 int NS_PHY_CR ;
 int NS_PHY_DSPCFG ;
 int NS_PHY_PAGE ;
 int NS_PHY_SDCFG ;
 int NS_PHY_TDATA ;
 scalar_t__ NS_SRR_15D ;
 scalar_t__ NS_SRR_16A ;
 int SIS_ADDR_LO (int ) ;
 int SIS_CFG ;
 int SIS_CFG_EDB_MASTER_EN ;
 int SIS_CLRBIT (struct sis_softc*,int ,int) ;
 int SIS_CSR ;
 int SIS_CSR_RX_DISABLE ;
 int SIS_CSR_TX_DISABLE ;
 int SIS_FILTADDR_PAR0 ;
 int SIS_FILTADDR_PAR1 ;
 int SIS_FILTADDR_PAR2 ;
 int SIS_FLAG_LINK ;
 int SIS_FLAG_MANUAL_PAD ;
 int SIS_IER ;
 int SIS_IMR ;
 int SIS_INTRS ;
 int SIS_LOCK_ASSERT (struct sis_softc*) ;
 int SIS_RXCFG256 ;
 int SIS_RXCFG64 ;
 int SIS_RXCFG_RX_JABBER ;
 int SIS_RXFILT_CTL ;
 int SIS_RXFILT_DATA ;
 int SIS_RX_CFG ;
 int SIS_RX_LISTPTR ;
 int SIS_SETBIT (struct sis_softc*,int ,int ) ;
 int SIS_TXCFG_100 ;
 int SIS_TX_CFG ;
 int SIS_TX_LISTPTR ;
 scalar_t__ SIS_TYPE_83815 ;
 int callout_reset (int *,int ,int ,struct sis_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int mii_mediachg (struct mii_data*) ;
 int sis_reset (struct sis_softc*) ;
 scalar_t__ sis_ring_init (struct sis_softc*) ;
 int sis_rxfilter (struct sis_softc*) ;
 int sis_stop (struct sis_softc*) ;
 int sis_tick ;

__attribute__((used)) static void
sis_initl(struct sis_softc *sc)
{
 struct ifnet *ifp = sc->sis_ifp;
 struct mii_data *mii;
 uint8_t *eaddr;

 SIS_LOCK_ASSERT(sc);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;




 sis_stop(sc);



 sis_reset(sc);
 mii = device_get_softc(sc->sis_miibus);


 eaddr = IF_LLADDR(sc->sis_ifp);
 if (sc->sis_type == SIS_TYPE_83815) {
  CSR_WRITE_4(sc, SIS_RXFILT_CTL, NS_FILTADDR_PAR0);
  CSR_WRITE_4(sc, SIS_RXFILT_DATA, eaddr[0] | eaddr[1] << 8);
  CSR_WRITE_4(sc, SIS_RXFILT_CTL, NS_FILTADDR_PAR1);
  CSR_WRITE_4(sc, SIS_RXFILT_DATA, eaddr[2] | eaddr[3] << 8);
  CSR_WRITE_4(sc, SIS_RXFILT_CTL, NS_FILTADDR_PAR2);
  CSR_WRITE_4(sc, SIS_RXFILT_DATA, eaddr[4] | eaddr[5] << 8);
 } else {
  CSR_WRITE_4(sc, SIS_RXFILT_CTL, SIS_FILTADDR_PAR0);
  CSR_WRITE_4(sc, SIS_RXFILT_DATA, eaddr[0] | eaddr[1] << 8);
  CSR_WRITE_4(sc, SIS_RXFILT_CTL, SIS_FILTADDR_PAR1);
  CSR_WRITE_4(sc, SIS_RXFILT_DATA, eaddr[2] | eaddr[3] << 8);
  CSR_WRITE_4(sc, SIS_RXFILT_CTL, SIS_FILTADDR_PAR2);
  CSR_WRITE_4(sc, SIS_RXFILT_DATA, eaddr[4] | eaddr[5] << 8);
 }


 if (sis_ring_init(sc) != 0) {
  device_printf(sc->sis_dev,
      "initialization failed: no memory for rx buffers\n");
  sis_stop(sc);
  return;
 }

 if (sc->sis_type == SIS_TYPE_83815) {
  if (sc->sis_manual_pad != 0)
   sc->sis_flags |= SIS_FLAG_MANUAL_PAD;
  else
   sc->sis_flags &= ~SIS_FLAG_MANUAL_PAD;
 }
 if (sc->sis_type == SIS_TYPE_83815 && sc->sis_srr <= NS_SRR_15D) {
  CSR_WRITE_4(sc, NS_PHY_PAGE, 0x0001);
  CSR_WRITE_4(sc, NS_PHY_CR, 0x189C);

  CSR_WRITE_4(sc, NS_PHY_TDATA, 0x0000);

  CSR_WRITE_4(sc, NS_PHY_DSPCFG, 0x5040);

  CSR_WRITE_4(sc, NS_PHY_SDCFG, 0x008C);
  CSR_WRITE_4(sc, NS_PHY_PAGE, 0);
 }

 sis_rxfilter(sc);




 CSR_WRITE_4(sc, SIS_RX_LISTPTR, SIS_ADDR_LO(sc->sis_rx_paddr));
 CSR_WRITE_4(sc, SIS_TX_LISTPTR, SIS_ADDR_LO(sc->sis_tx_paddr));





 if (CSR_READ_4(sc, SIS_CFG) & SIS_CFG_EDB_MASTER_EN) {
  CSR_WRITE_4(sc, SIS_RX_CFG, SIS_RXCFG64);
 } else {
  CSR_WRITE_4(sc, SIS_RX_CFG, SIS_RXCFG256);
 }


 SIS_SETBIT(sc, SIS_RX_CFG, SIS_RXCFG_RX_JABBER);





 CSR_WRITE_4(sc, SIS_TX_CFG, SIS_TXCFG_100);




 CSR_WRITE_4(sc, SIS_IMR, SIS_INTRS);
 CSR_WRITE_4(sc, SIS_IER, 1);


 SIS_CLRBIT(sc, SIS_CSR, SIS_CSR_TX_DISABLE | SIS_CSR_RX_DISABLE);

 sc->sis_flags &= ~SIS_FLAG_LINK;
 mii_mediachg(mii);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 callout_reset(&sc->sis_stat_ch, hz, sis_tick, sc);
}
