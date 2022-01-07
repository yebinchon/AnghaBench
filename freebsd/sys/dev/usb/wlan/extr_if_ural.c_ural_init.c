
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct ieee80211com {scalar_t__ ic_opmode; scalar_t__ ic_promisc; int ic_macaddr; int ic_curchan; int ic_vaps; } ;
struct ural_softc {int sc_running; int * sc_xfer; int rx_ant; int tx_ant; int sta; int sc_dev; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int iv_myaddr; } ;
struct TYPE_3__ {int reg; int val; } ;


 scalar_t__ IEEE80211_M_HOSTAP ;
 scalar_t__ IEEE80211_M_MONITOR ;
 int MA_OWNED ;
 int RAL_BBP_AWAKE ;
 int RAL_DROP_BAD_VERSION ;
 int RAL_DROP_CRC ;
 int RAL_DROP_CTL ;
 int RAL_DROP_NOT_TO_ME ;
 int RAL_DROP_PHY ;
 int RAL_DROP_TODS ;
 int RAL_HOST_READY ;
 int RAL_LOCK_ASSERT (struct ural_softc*,int ) ;
 int RAL_MAC_CSR1 ;
 int RAL_MAC_CSR17 ;
 int RAL_RF_AWAKE ;
 int RAL_STA_CSR0 ;
 int RAL_TXRX_CSR11 ;
 int RAL_TXRX_CSR2 ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 size_t URAL_BULK_RD ;
 size_t URAL_BULK_WR ;
 int device_printf (int ,char*) ;
 int hz ;
 int nitems (TYPE_1__*) ;
 scalar_t__ ural_bbp_init (struct ural_softc*) ;
 TYPE_1__* ural_def_mac ;
 scalar_t__ ural_pause (struct ural_softc*,int) ;
 int ural_read (struct ural_softc*,int ) ;
 int ural_read_multi (struct ural_softc*,int ,int ,int) ;
 int ural_set_chan (struct ural_softc*,int ) ;
 int ural_set_macaddr (struct ural_softc*,int ) ;
 int ural_set_rxantenna (struct ural_softc*,int ) ;
 int ural_set_testmode (struct ural_softc*) ;
 int ural_set_txantenna (struct ural_softc*,int ) ;
 int ural_setup_tx_list (struct ural_softc*) ;
 int ural_stop (struct ural_softc*) ;
 int ural_write (struct ural_softc*,int,int) ;
 int usbd_transfer_start (int ) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static void
ural_init(struct ural_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);
 uint16_t tmp;
 int i, ntries;

 RAL_LOCK_ASSERT(sc, MA_OWNED);

 ural_set_testmode(sc);
 ural_write(sc, 0x308, 0x00f0);

 ural_stop(sc);


 for (i = 0; i < nitems(ural_def_mac); i++)
  ural_write(sc, ural_def_mac[i].reg, ural_def_mac[i].val);


 for (ntries = 0; ntries < 100; ntries++) {
  tmp = ural_read(sc, RAL_MAC_CSR17);
  if ((tmp & (RAL_BBP_AWAKE | RAL_RF_AWAKE)) ==
      (RAL_BBP_AWAKE | RAL_RF_AWAKE))
   break;
  if (ural_pause(sc, hz / 100))
   break;
 }
 if (ntries == 100) {
  device_printf(sc->sc_dev,
      "timeout waiting for BBP/RF to wakeup\n");
  goto fail;
 }


 ural_write(sc, RAL_MAC_CSR1, RAL_HOST_READY);


 ural_write(sc, RAL_TXRX_CSR11, 0x15f);

 if (ural_bbp_init(sc) != 0)
  goto fail;

 ural_set_chan(sc, ic->ic_curchan);


 ural_read_multi(sc, RAL_STA_CSR0, sc->sta, sizeof sc->sta);

 ural_set_txantenna(sc, sc->tx_ant);
 ural_set_rxantenna(sc, sc->rx_ant);

 ural_set_macaddr(sc, vap ? vap->iv_myaddr : ic->ic_macaddr);




 ural_setup_tx_list(sc);


 tmp = RAL_DROP_PHY | RAL_DROP_CRC;
 if (ic->ic_opmode != IEEE80211_M_MONITOR) {
  tmp |= RAL_DROP_CTL | RAL_DROP_BAD_VERSION;
  if (ic->ic_opmode != IEEE80211_M_HOSTAP)
   tmp |= RAL_DROP_TODS;
  if (ic->ic_promisc == 0)
   tmp |= RAL_DROP_NOT_TO_ME;
 }
 ural_write(sc, RAL_TXRX_CSR2, tmp);

 sc->sc_running = 1;
 usbd_xfer_set_stall(sc->sc_xfer[URAL_BULK_WR]);
 usbd_transfer_start(sc->sc_xfer[URAL_BULK_RD]);
 return;

fail: ural_stop(sc);
}
