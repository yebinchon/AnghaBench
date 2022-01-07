
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int sge_rx_paddr; int sge_tx_paddr; } ;
struct sge_softc {int sge_flags; int sge_intrcontrol; int sge_intrtimer; int sge_stat_ch; TYPE_1__ sge_ldata; int sge_dev; int sge_miibus; struct ifnet* sge_ifp; } ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; } ;


 int CSR_WRITE_1 (struct sge_softc*,scalar_t__,int ) ;
 int CSR_WRITE_2 (struct sge_softc*,int ,int) ;
 int CSR_WRITE_4 (struct sge_softc*,int ,int) ;
 scalar_t__ ENOBUFS ;
 int ETHER_ADDR_LEN ;
 int ETHER_MAX_LEN ;
 int ETHER_VLAN_ENCAP_LEN ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int * IF_LLADDR (struct ifnet*) ;
 int IntrControl ;
 int IntrMask ;
 int IntrStatus ;
 int IntrTimer ;
 int RXMAC_CSUM_ENB ;
 int RXMAC_PAD_ENB ;
 int RXMAC_STRIP_FCS ;
 int RX_CTL ;
 int RX_CTL_ENB ;
 int RX_CTL_POLL ;
 int RX_DESC ;
 int RxMPSControl ;
 scalar_t__ RxMacAddr ;
 int RxMacControl ;
 int RxWakeOnLan ;
 int RxWakeOnLanData ;
 int SGE_ADDR_LO (int ) ;
 int SGE_FLAG_FASTETHER ;
 int SGE_FLAG_FDX ;
 int SGE_FLAG_LINK ;
 int SGE_FLAG_RGMII ;
 int SGE_FLAG_SPEED_1000 ;
 int SGE_INTRS ;
 int SGE_LOCK_ASSERT (struct sge_softc*) ;
 int SGE_RX_PAD_BYTES ;
 int StationControl ;
 int TX_CTL ;
 int TX_CTL_ENB ;
 int TX_DESC ;
 int TxMacControl ;
 int callout_reset (int *,int ,int ,struct sge_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int mii_mediachg (struct mii_data*) ;
 scalar_t__ sge_list_rx_init (struct sge_softc*) ;
 int sge_list_tx_init (struct sge_softc*) ;
 int sge_reset (struct sge_softc*) ;
 int sge_rxfilter (struct sge_softc*) ;
 int sge_setvlan (struct sge_softc*) ;
 int sge_stop (struct sge_softc*) ;
 int sge_tick ;

__attribute__((used)) static void
sge_init_locked(struct sge_softc *sc)
{
 struct ifnet *ifp;
 struct mii_data *mii;
 uint16_t rxfilt;
 int i;

 SGE_LOCK_ASSERT(sc);
 ifp = sc->sge_ifp;
 mii = device_get_softc(sc->sge_miibus);
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;



 sge_stop(sc);
 sge_reset(sc);


 if (sge_list_rx_init(sc) == ENOBUFS) {
  device_printf(sc->sge_dev, "no memory for Rx buffers\n");
  sge_stop(sc);
  return;
 }

 sge_list_tx_init(sc);



 CSR_WRITE_4(sc, TX_DESC, SGE_ADDR_LO(sc->sge_ldata.sge_tx_paddr));
 CSR_WRITE_4(sc, RX_DESC, SGE_ADDR_LO(sc->sge_ldata.sge_rx_paddr));

 CSR_WRITE_4(sc, TxMacControl, 0x60);
 CSR_WRITE_4(sc, RxWakeOnLan, 0);
 CSR_WRITE_4(sc, RxWakeOnLanData, 0);

 CSR_WRITE_2(sc, RxMPSControl, ETHER_MAX_LEN + ETHER_VLAN_ENCAP_LEN +
     SGE_RX_PAD_BYTES);

 for (i = 0; i < ETHER_ADDR_LEN; i++)
  CSR_WRITE_1(sc, RxMacAddr + i, IF_LLADDR(ifp)[i]);

 rxfilt = RXMAC_STRIP_FCS | RXMAC_PAD_ENB | RXMAC_CSUM_ENB;
 CSR_WRITE_2(sc, RxMacControl, rxfilt);
 sge_rxfilter(sc);
 sge_setvlan(sc);


 if ((sc->sge_flags & SGE_FLAG_FASTETHER) == 0)
  sc->sge_flags |= SGE_FLAG_SPEED_1000;
 sc->sge_flags |= SGE_FLAG_FDX;
 if ((sc->sge_flags & SGE_FLAG_RGMII) != 0)
  CSR_WRITE_4(sc, StationControl, 0x04008001);
 else
  CSR_WRITE_4(sc, StationControl, 0x04000001);



 CSR_WRITE_4(sc, IntrControl, 0x08880000);
 CSR_WRITE_4(sc, IntrStatus, 0xFFFFFFFF);
 CSR_WRITE_4(sc, IntrMask, SGE_INTRS);


 CSR_WRITE_4(sc, TX_CTL, 0x1a00 | TX_CTL_ENB);
 CSR_WRITE_4(sc, RX_CTL, 0x1a00 | 0x000c | RX_CTL_POLL | RX_CTL_ENB);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 sc->sge_flags &= ~SGE_FLAG_LINK;
 mii_mediachg(mii);
 callout_reset(&sc->sge_stat_ch, hz, sge_tick, sc);
}
