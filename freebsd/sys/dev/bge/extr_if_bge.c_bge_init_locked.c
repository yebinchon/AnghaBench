
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct bge_softc {scalar_t__ bge_forced_udpcsum; int bge_csum_features; scalar_t__ bge_chipid; scalar_t__ bge_asicrev; int bge_stat_ch; scalar_t__ bge_tx_collisions; scalar_t__ bge_tx_discards; scalar_t__ bge_rx_discards; scalar_t__ bge_rx_saved_considx; int bge_dev; int bge_ifp; } ;
typedef int if_t ;


 scalar_t__ BGE_ASICREV_BCM5720 ;
 scalar_t__ BGE_ASICREV_BCM5762 ;
 scalar_t__ BGE_ASICREV_BCM5906 ;
 scalar_t__ BGE_CHIPID_BCM5705_A0 ;
 int BGE_CLRBIT (struct bge_softc*,int ,int ) ;
 int BGE_CSUM_FEATURES ;
 scalar_t__ BGE_IS_5705_PLUS (struct bge_softc*) ;
 scalar_t__ BGE_IS_5755_PLUS (struct bge_softc*) ;
 scalar_t__ BGE_IS_57765_PLUS (struct bge_softc*) ;
 scalar_t__ BGE_IS_JUMBO_CAPABLE (struct bge_softc*) ;
 int BGE_LOCK_ASSERT (struct bge_softc*) ;
 int BGE_MAC_ADDR1_HI ;
 int BGE_MAC_ADDR1_LO ;
 int BGE_MAX_RX_FRAME_LOWAT ;
 int BGE_MBX_IRQ0_LO ;
 int BGE_MODECTL_STACKUP ;
 int BGE_MODE_CTL ;
 int BGE_PCIMISCCTL_CLEAR_INTA ;
 int BGE_PCIMISCCTL_MASK_PCI_INTR ;
 int BGE_PCI_MISC_CTL ;
 int BGE_RESET_START ;
 int BGE_RXMODE_ENABLE ;
 int BGE_RXMODE_IPV4_FRAG_FIX ;
 int BGE_RXMODE_IPV6_ENABLE ;
 int BGE_RX_MODE ;
 int BGE_RX_MTU ;
 int BGE_SETBIT (struct bge_softc*,int ,int ) ;
 scalar_t__ BGE_STD_RX_RINGS ;
 int BGE_TXMODE_CNT_DN_MODE ;
 int BGE_TXMODE_ENABLE ;
 int BGE_TXMODE_JMB_FRM_LEN ;
 int BGE_TXMODE_MBUF_LOCKUP_FIX ;
 int BGE_TX_MODE ;
 int CSR_READ_4 (struct bge_softc*,int ) ;
 int CSR_WRITE_4 (struct bge_softc*,int ,int) ;
 int CSUM_UDP ;
 int DELAY (int) ;
 int ETHER_ALIGN ;
 int ETHER_CRC_LEN ;
 int ETHER_HDR_LEN ;
 int ETHER_VLAN_ENCAP_LEN ;
 int IFCAP_POLLING ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_MTU ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 scalar_t__ IF_LLADDR (int ) ;
 int MCLBYTES ;
 scalar_t__ bge_blockinit (struct bge_softc*) ;
 int bge_chipinit (struct bge_softc*) ;
 int bge_ifmedia_upd_locked (int ) ;
 scalar_t__ bge_init_rx_ring_jumbo (struct bge_softc*) ;
 scalar_t__ bge_init_rx_ring_std (struct bge_softc*) ;
 int bge_init_tx_ring (struct bge_softc*) ;
 int bge_readmem_ind (struct bge_softc*,scalar_t__) ;
 int bge_reset (struct bge_softc*) ;
 int bge_setmulti (struct bge_softc*) ;
 int bge_setpromisc (struct bge_softc*) ;
 int bge_setvlan (struct bge_softc*) ;
 int bge_sig_legacy (struct bge_softc*,int ) ;
 int bge_sig_post_reset (struct bge_softc*,int ) ;
 int bge_sig_pre_reset (struct bge_softc*,int ) ;
 int bge_stats_clear_regs (struct bge_softc*) ;
 int bge_stop (struct bge_softc*) ;
 int bge_stop_fw (struct bge_softc*) ;
 int bge_tick ;
 int bge_writembx (struct bge_softc*,int ,int) ;
 int callout_reset (int *,int ,int ,struct bge_softc*) ;
 int device_printf (int ,char*) ;
 int htons (int ) ;
 int hz ;
 int if_getcapabilities (int ) ;
 int if_getcapenable (int ) ;
 int if_getdrvflags (int ) ;
 int if_getmtu (int ) ;
 int if_setdrvflagbits (int ,int,int ) ;
 int if_sethwassistbits (int ,int,int) ;

__attribute__((used)) static void
bge_init_locked(struct bge_softc *sc)
{
 if_t ifp;
 uint16_t *m;
 uint32_t mode;

 BGE_LOCK_ASSERT(sc);

 ifp = sc->bge_ifp;

 if (if_getdrvflags(ifp) & IFF_DRV_RUNNING)
  return;


 bge_stop(sc);

 bge_stop_fw(sc);
 bge_sig_pre_reset(sc, BGE_RESET_START);
 bge_reset(sc);
 bge_sig_legacy(sc, BGE_RESET_START);
 bge_sig_post_reset(sc, BGE_RESET_START);

 bge_chipinit(sc);





 if (bge_blockinit(sc)) {
  device_printf(sc->bge_dev, "initialization failure\n");
  return;
 }

 ifp = sc->bge_ifp;


 CSR_WRITE_4(sc, BGE_RX_MTU, if_getmtu(ifp) +
     ETHER_HDR_LEN + ETHER_CRC_LEN +
     (if_getcapenable(ifp) & IFCAP_VLAN_MTU ? ETHER_VLAN_ENCAP_LEN : 0));


 m = (uint16_t *)IF_LLADDR(sc->bge_ifp);
 CSR_WRITE_4(sc, BGE_MAC_ADDR1_LO, htons(m[0]));
 CSR_WRITE_4(sc, BGE_MAC_ADDR1_HI, (htons(m[1]) << 16) | htons(m[2]));


 bge_setpromisc(sc);


 bge_setmulti(sc);


 bge_setvlan(sc);


 if (sc->bge_forced_udpcsum == 0)
  sc->bge_csum_features &= ~CSUM_UDP;
 else
  sc->bge_csum_features |= CSUM_UDP;
 if (if_getcapabilities(ifp) & IFCAP_TXCSUM &&
     if_getcapenable(ifp) & IFCAP_TXCSUM) {
  if_sethwassistbits(ifp, 0, (BGE_CSUM_FEATURES | CSUM_UDP));
  if_sethwassistbits(ifp, sc->bge_csum_features, 0);
 }


 if (bge_init_rx_ring_std(sc) != 0) {
  device_printf(sc->bge_dev, "no memory for std Rx buffers.\n");
  bge_stop(sc);
  return;
 }






 if (sc->bge_chipid == BGE_CHIPID_BCM5705_A0) {
  uint32_t v, i;
  for (i = 0; i < 10; i++) {
   DELAY(20);
   v = bge_readmem_ind(sc, BGE_STD_RX_RINGS + 8);
   if (v == (MCLBYTES - ETHER_ALIGN))
    break;
  }
  if (i == 10)
   device_printf (sc->bge_dev,
       "5705 A0 chip failed to load RX ring\n");
 }


 if (BGE_IS_JUMBO_CAPABLE(sc) &&
     if_getmtu(ifp) + ETHER_HDR_LEN + ETHER_CRC_LEN +
          ETHER_VLAN_ENCAP_LEN > (MCLBYTES - ETHER_ALIGN)) {
  if (bge_init_rx_ring_jumbo(sc) != 0) {
   device_printf(sc->bge_dev,
       "no memory for jumbo Rx buffers.\n");
   bge_stop(sc);
   return;
  }
 }


 sc->bge_rx_saved_considx = 0;


 sc->bge_rx_discards = sc->bge_tx_discards = sc->bge_tx_collisions = 0;


 bge_init_tx_ring(sc);


 mode = CSR_READ_4(sc, BGE_TX_MODE);
 if (BGE_IS_5755_PLUS(sc) || sc->bge_asicrev == BGE_ASICREV_BCM5906)
  mode |= BGE_TXMODE_MBUF_LOCKUP_FIX;
 if (sc->bge_asicrev == BGE_ASICREV_BCM5720 ||
     sc->bge_asicrev == BGE_ASICREV_BCM5762) {
  mode &= ~(BGE_TXMODE_JMB_FRM_LEN | BGE_TXMODE_CNT_DN_MODE);
  mode |= CSR_READ_4(sc, BGE_TX_MODE) &
      (BGE_TXMODE_JMB_FRM_LEN | BGE_TXMODE_CNT_DN_MODE);
 }

 CSR_WRITE_4(sc, BGE_TX_MODE, mode | BGE_TXMODE_ENABLE);
 DELAY(100);


 mode = CSR_READ_4(sc, BGE_RX_MODE);
 if (BGE_IS_5755_PLUS(sc))
  mode |= BGE_RXMODE_IPV6_ENABLE;
 if (sc->bge_asicrev == BGE_ASICREV_BCM5762)
  mode |= BGE_RXMODE_IPV4_FRAG_FIX;
 CSR_WRITE_4(sc,BGE_RX_MODE, mode | BGE_RXMODE_ENABLE);
 DELAY(10);







 if (BGE_IS_57765_PLUS(sc))
  CSR_WRITE_4(sc, BGE_MAX_RX_FRAME_LOWAT, 1);
 else
  CSR_WRITE_4(sc, BGE_MAX_RX_FRAME_LOWAT, 2);


 if (BGE_IS_5705_PLUS(sc))
  bge_stats_clear_regs(sc);


 BGE_SETBIT(sc, BGE_MODE_CTL, BGE_MODECTL_STACKUP);
 {
 BGE_SETBIT(sc, BGE_PCI_MISC_CTL, BGE_PCIMISCCTL_CLEAR_INTA);
 BGE_CLRBIT(sc, BGE_PCI_MISC_CTL, BGE_PCIMISCCTL_MASK_PCI_INTR);
 bge_writembx(sc, BGE_MBX_IRQ0_LO, 0);
 }

 if_setdrvflagbits(ifp, IFF_DRV_RUNNING, 0);
 if_setdrvflagbits(ifp, 0, IFF_DRV_OACTIVE);

 bge_ifmedia_upd_locked(ifp);

 callout_reset(&sc->bge_stat_ch, hz, bge_tick, sc);
}
