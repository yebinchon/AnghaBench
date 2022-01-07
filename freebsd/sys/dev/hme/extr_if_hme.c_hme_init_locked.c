
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int ;
struct ip {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct TYPE_2__ {int rb_txddma; int rb_rxddma; } ;
struct hme_softc {int sc_burst; int sc_tick_ch; scalar_t__ sc_wdog_timer; TYPE_1__ sc_rb; int sc_dev; struct ifnet* sc_ifp; } ;


 int CTR1 (int ,char*,int ) ;
 int CTR2 (int ,char*,int,int) ;
 int CTR3 (int ,char*,int ,int,int) ;
 int CTR4 (int ,char*,int,int,int,int) ;
 int ETHER_HDR_LEN ;
 int HME_ERXI_CFG ;
 int HME_ERXI_RING ;
 int HME_ERX_CFG_CSUMSTART_MASK ;
 int HME_ERX_CFG_CSUMSTART_SHIFT ;
 int HME_ERX_CFG_DMAENABLE ;
 int HME_ERX_CFG_FBO_MASK ;
 int HME_ERX_CFG_FBO_SHIFT ;
 int HME_ERX_CFG_RINGSIZE128 ;
 int HME_ERX_CFG_RINGSIZE256 ;
 int HME_ERX_CFG_RINGSIZE32 ;
 int HME_ERX_CFG_RINGSIZE64 ;
 int HME_ERX_CFG_RINGSIZEMSK ;
 int HME_ERX_READ_4 (struct hme_softc*,int ) ;
 int HME_ERX_WRITE_4 (struct hme_softc*,int ,int) ;
 int HME_ETXI_CFG ;
 int HME_ETXI_RING ;
 int HME_ETXI_RSIZE ;
 int HME_ETX_CFG_DMAENABLE ;
 int HME_ETX_READ_4 (struct hme_softc*,int ) ;
 int HME_ETX_WRITE_4 (struct hme_softc*,int ,int) ;
 int HME_LOCK_ASSERT (struct hme_softc*,int ) ;
 int HME_MACI_EXCNT ;
 int HME_MACI_FCCNT ;
 int HME_MACI_LTCNT ;
 int HME_MACI_MACADDR0 ;
 int HME_MACI_MACADDR1 ;
 int HME_MACI_MACADDR2 ;
 int HME_MACI_NCCNT ;
 int HME_MACI_RANDSEED ;
 int HME_MACI_RXCFG ;
 int HME_MACI_RXSIZE ;
 int HME_MACI_TXCFG ;
 int HME_MACI_TXSIZE ;
 int HME_MACI_XIF ;
 int HME_MAC_READ_4 (struct hme_softc*,int ) ;
 int HME_MAC_RXCFG_DCRCS ;
 int HME_MAC_RXCFG_ENABLE ;
 int HME_MAC_TXCFG_DGIVEUP ;
 int HME_MAC_TXCFG_ENABLE ;
 int HME_MAC_WRITE_4 (struct hme_softc*,int ,int) ;
 int HME_MAC_XIF_OE ;
 int HME_MAX_FRAMESIZE ;
 int HME_MIFI_IMASK ;
 int HME_MIF_WRITE_4 (struct hme_softc*,int ,int) ;
 int HME_NRXDESC ;
 int HME_NTXDESC ;
 int HME_RXOFFS ;
 int HME_SEBI_CFG ;
 int HME_SEBI_IMASK ;
 int HME_SEB_CFG_BURST16 ;
 int HME_SEB_CFG_BURST32 ;
 int HME_SEB_CFG_BURST64 ;
 int HME_SEB_READ_4 (struct hme_softc*,int ) ;
 int HME_SEB_STAT_ALL_ERRORS ;
 int HME_SEB_STAT_HOSTTOTX ;
 int HME_SEB_STAT_RCNTEXP ;
 int HME_SEB_STAT_RXTOHOST ;
 int HME_SEB_STAT_TXALL ;
 int HME_SEB_STAT_TXPERR ;
 int HME_SEB_WRITE_4 (struct hme_softc*,int ,int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int* IF_LLADDR (struct ifnet*) ;
 int KTR_HME ;
 int MA_OWNED ;
 int callout_reset (int *,int ,int ,struct hme_softc*) ;
 int device_printf (int ,char*) ;
 int hme_mediachange_locked (struct hme_softc*) ;
 scalar_t__ hme_meminit (struct hme_softc*) ;
 int hme_mifinit (struct hme_softc*) ;
 int hme_setladrf (struct hme_softc*,int ) ;
 int hme_stop (struct hme_softc*) ;
 int hme_tick ;
 int hz ;
 int printf (char*) ;

__attribute__((used)) static void
hme_init_locked(struct hme_softc *sc)
{
 struct ifnet *ifp = sc->sc_ifp;
 u_int8_t *ea;
 u_int32_t n, v;

 HME_LOCK_ASSERT(sc, MA_OWNED);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;
 hme_stop(sc);


 hme_mifinit(sc);







 if (hme_meminit(sc) != 0) {
  device_printf(sc->sc_dev, "out of buffers; init aborted.");
  return;
 }


 HME_MAC_WRITE_4(sc, HME_MACI_NCCNT, 0);
 HME_MAC_WRITE_4(sc, HME_MACI_FCCNT, 0);
 HME_MAC_WRITE_4(sc, HME_MACI_EXCNT, 0);
 HME_MAC_WRITE_4(sc, HME_MACI_LTCNT, 0);
 HME_MAC_WRITE_4(sc, HME_MACI_TXSIZE, HME_MAX_FRAMESIZE);


 ea = IF_LLADDR(ifp);
 HME_MAC_WRITE_4(sc, HME_MACI_MACADDR0, (ea[0] << 8) | ea[1]);
 HME_MAC_WRITE_4(sc, HME_MACI_MACADDR1, (ea[2] << 8) | ea[3]);
 HME_MAC_WRITE_4(sc, HME_MACI_MACADDR2, (ea[4] << 8) | ea[5]);





 v = ((ea[4] << 8) | ea[5]) & 0x3fff;
 HME_MAC_WRITE_4(sc, HME_MACI_RANDSEED, v);




 hme_setladrf(sc, 0);


 HME_ETX_WRITE_4(sc, HME_ETXI_RING, sc->sc_rb.rb_txddma);

 HME_ETX_WRITE_4(sc, HME_ETXI_RSIZE, HME_NTXDESC / 16 - 1);

 HME_ERX_WRITE_4(sc, HME_ERXI_RING, sc->sc_rb.rb_rxddma);
 HME_MAC_WRITE_4(sc, HME_MACI_RXSIZE, HME_MAX_FRAMESIZE);


 HME_SEB_WRITE_4(sc, HME_SEBI_IMASK,
     ~(
  HME_SEB_STAT_HOSTTOTX |
  HME_SEB_STAT_RXTOHOST |
  HME_SEB_STAT_TXALL |
  HME_SEB_STAT_TXPERR |
  HME_SEB_STAT_RCNTEXP |
  HME_SEB_STAT_ALL_ERRORS ));

 switch (sc->sc_burst) {
 default:
  v = 0;
  break;
 case 16:
  v = HME_SEB_CFG_BURST16;
  break;
 case 32:
  v = HME_SEB_CFG_BURST32;
  break;
 case 64:
  v = HME_SEB_CFG_BURST64;
  break;
 }
 HME_SEB_WRITE_4(sc, HME_SEBI_CFG, v);




 v = HME_ETX_READ_4(sc, HME_ETXI_CFG);
 v |= HME_ETX_CFG_DMAENABLE;
 HME_ETX_WRITE_4(sc, HME_ETXI_CFG, v);


 v = HME_ERX_READ_4(sc, HME_ERXI_CFG);


 v &= ~HME_ERX_CFG_RINGSIZEMSK;
 switch (HME_NRXDESC) {
 case 32:
  v |= HME_ERX_CFG_RINGSIZE32;
  break;
 case 64:
  v |= HME_ERX_CFG_RINGSIZE64;
  break;
 case 128:
  v |= HME_ERX_CFG_RINGSIZE128;
  break;
 case 256:
  v |= HME_ERX_CFG_RINGSIZE256;
  break;
 default:
  printf("hme: invalid Receive Descriptor ring size\n");
  break;
 }


 v &= ~HME_ERX_CFG_FBO_MASK;
 v |= HME_ERX_CFG_DMAENABLE | (HME_RXOFFS << HME_ERX_CFG_FBO_SHIFT);

 n = (ETHER_HDR_LEN + sizeof(struct ip)) / 2;
 n = (n << HME_ERX_CFG_CSUMSTART_SHIFT) & HME_ERX_CFG_CSUMSTART_MASK;
 v |= n;
 CTR1(KTR_HME, "hme_init: programming ERX_CFG to %x", (u_int)v);
 HME_ERX_WRITE_4(sc, HME_ERXI_CFG, v);


 v = HME_MAC_READ_4(sc, HME_MACI_XIF);
 v |= HME_MAC_XIF_OE;
 CTR1(KTR_HME, "hme_init: programming XIF to %x", (u_int)v);
 HME_MAC_WRITE_4(sc, HME_MACI_XIF, v);


 v = HME_MAC_READ_4(sc, HME_MACI_RXCFG);
 v |= HME_MAC_RXCFG_ENABLE;
 v &= ~(HME_MAC_RXCFG_DCRCS);
 CTR1(KTR_HME, "hme_init: programming RX_MAC to %x", (u_int)v);
 HME_MAC_WRITE_4(sc, HME_MACI_RXCFG, v);


 v = HME_MAC_READ_4(sc, HME_MACI_TXCFG);
 v |= (HME_MAC_TXCFG_ENABLE | HME_MAC_TXCFG_DGIVEUP);
 CTR1(KTR_HME, "hme_init: programming TX_MAC to %x", (u_int)v);
 HME_MAC_WRITE_4(sc, HME_MACI_TXCFG, v);
 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;


 hme_mediachange_locked(sc);


 sc->sc_wdog_timer = 0;
 callout_reset(&sc->sc_tick_ch, hz, hme_tick, sc);
}
