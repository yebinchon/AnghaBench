
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint32_t ;
struct ieee80211com {int ic_curchan; int ic_macaddr; int ic_vaps; } ;
struct uath_softc {int sc_flags; int watchdog_ch; int * sc_xfer; int sc_dev; scalar_t__ sc_msgid; scalar_t__ sc_intrx_nextnum; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int iv_myaddr; } ;


 int CFG_ABOLT ;
 int CFG_DIVERSITY_CTL ;
 int CFG_GMODE_PROTECTION ;
 int CFG_GMODE_PROTECT_RATE_INDEX ;
 int CFG_MAC_ADDR ;
 int CFG_MODE_CTS ;
 int CFG_OVERRD_TX_POWER ;
 int CFG_PROTECTION_TYPE ;
 int CFG_RATE_CONTROL_ENABLE ;
 int CFG_SERVICE_TYPE ;
 int CFG_TPC_HALF_DBM2 ;
 int CFG_TPC_HALF_DBM5 ;
 int CFG_TP_SCALE ;
 int CFG_WME_ENABLED ;
 int DPRINTF (struct uath_softc*,int ,char*,int ,int ) ;
 int IEEE80211_ADDR_LEN ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int TARGET_DEVICE_AWAKE ;
 int UATH_ASSERT_LOCKED (struct uath_softc*) ;
 size_t UATH_BULK_RX ;
 int UATH_CMD_FLAG_MAGIC ;
 int UATH_DEBUG_INIT ;
 int UATH_FILTER_OP_INIT ;
 int UATH_FILTER_OP_SET ;
 int UATH_FILTER_RX_BCAST ;
 int UATH_FILTER_RX_BEACON ;
 int UATH_FILTER_RX_MCAST ;
 int UATH_FILTER_RX_UCAST ;
 int UATH_FLAG_INITDONE ;
 int WDCMSG_BIND ;
 int WDCMSG_RESET_KEY_CACHE ;
 int WDCMSG_SET_PWR_MODE ;
 int WDCMSG_TARGET_START ;
 int be32toh (int ) ;
 int callout_reset (int *,int ,int ,struct uath_softc*) ;
 int device_printf (int ,char*,int) ;
 int htobe32 (int ) ;
 int hz ;
 int uath_cmd_read (struct uath_softc*,int ,int *,int ,int *,int,int ) ;
 int uath_cmd_write (struct uath_softc*,int ,int *,int,int ) ;
 int uath_codename (int ) ;
 int uath_config (struct uath_softc*,int ,int) ;
 int uath_config_multi (struct uath_softc*,int ,int ,int ) ;
 int uath_set_rxfilter (struct uath_softc*,int,int ) ;
 int uath_stop (struct uath_softc*) ;
 int uath_switch_channel (struct uath_softc*,int ) ;
 int uath_watchdog ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static int
uath_init(struct uath_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);
 uint32_t val;
 int error;

 UATH_ASSERT_LOCKED(sc);

 if (sc->sc_flags & UATH_FLAG_INITDONE)
  uath_stop(sc);


 sc->sc_intrx_nextnum = sc->sc_msgid = 0;

 val = htobe32(0);
 uath_cmd_write(sc, WDCMSG_BIND, &val, sizeof val, 0);


 uath_config_multi(sc, CFG_MAC_ADDR,
     vap ? vap->iv_myaddr : ic->ic_macaddr, IEEE80211_ADDR_LEN);


 uath_config(sc, CFG_RATE_CONTROL_ENABLE, 0x00000001);
 uath_config(sc, CFG_DIVERSITY_CTL, 0x00000001);
 uath_config(sc, CFG_ABOLT, 0x0000003f);
 uath_config(sc, CFG_WME_ENABLED, 0x00000001);

 uath_config(sc, CFG_SERVICE_TYPE, 1);
 uath_config(sc, CFG_TP_SCALE, 0x00000000);
 uath_config(sc, CFG_TPC_HALF_DBM5, 0x0000003c);
 uath_config(sc, CFG_TPC_HALF_DBM2, 0x0000003c);
 uath_config(sc, CFG_OVERRD_TX_POWER, 0x00000000);
 uath_config(sc, CFG_GMODE_PROTECTION, 0x00000000);
 uath_config(sc, CFG_GMODE_PROTECT_RATE_INDEX, 0x00000003);
 uath_config(sc, CFG_PROTECTION_TYPE, 0x00000000);
 uath_config(sc, CFG_MODE_CTS, 0x00000002);

 error = uath_cmd_read(sc, WDCMSG_TARGET_START, ((void*)0), 0,
     &val, sizeof(val), UATH_CMD_FLAG_MAGIC);
 if (error) {
  device_printf(sc->sc_dev,
      "could not start target, error %d\n", error);
  goto fail;
 }
 DPRINTF(sc, UATH_DEBUG_INIT, "%s returns handle: 0x%x\n",
     uath_codename(WDCMSG_TARGET_START), be32toh(val));


 error = uath_switch_channel(sc, ic->ic_curchan);
 if (error) {
  device_printf(sc->sc_dev,
      "could not switch channel, error %d\n", error);
  goto fail;
 }

 val = htobe32(TARGET_DEVICE_AWAKE);
 uath_cmd_write(sc, WDCMSG_SET_PWR_MODE, &val, sizeof val, 0);

 uath_cmd_write(sc, WDCMSG_RESET_KEY_CACHE, ((void*)0), 0, 0);

 usbd_transfer_start(sc->sc_xfer[UATH_BULK_RX]);

 uath_set_rxfilter(sc, 0x0, UATH_FILTER_OP_INIT);
 uath_set_rxfilter(sc,
     UATH_FILTER_RX_UCAST | UATH_FILTER_RX_MCAST |
     UATH_FILTER_RX_BCAST | UATH_FILTER_RX_BEACON,
     UATH_FILTER_OP_SET);

 sc->sc_flags |= UATH_FLAG_INITDONE;

 callout_reset(&sc->watchdog_ch, hz, uath_watchdog, sc);

 return (0);

fail:
 uath_stop(sc);
 return (error);
}
