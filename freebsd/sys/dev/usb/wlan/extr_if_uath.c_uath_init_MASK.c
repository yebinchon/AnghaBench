#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ieee80211com {int /*<<< orphan*/  ic_curchan; int /*<<< orphan*/  ic_macaddr; int /*<<< orphan*/  ic_vaps; } ;
struct uath_softc {int sc_flags; int /*<<< orphan*/  watchdog_ch; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_dev; scalar_t__ sc_msgid; scalar_t__ sc_intrx_nextnum; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int /*<<< orphan*/  iv_myaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_ABOLT ; 
 int /*<<< orphan*/  CFG_DIVERSITY_CTL ; 
 int /*<<< orphan*/  CFG_GMODE_PROTECTION ; 
 int /*<<< orphan*/  CFG_GMODE_PROTECT_RATE_INDEX ; 
 int /*<<< orphan*/  CFG_MAC_ADDR ; 
 int /*<<< orphan*/  CFG_MODE_CTS ; 
 int /*<<< orphan*/  CFG_OVERRD_TX_POWER ; 
 int /*<<< orphan*/  CFG_PROTECTION_TYPE ; 
 int /*<<< orphan*/  CFG_RATE_CONTROL_ENABLE ; 
 int /*<<< orphan*/  CFG_SERVICE_TYPE ; 
 int /*<<< orphan*/  CFG_TPC_HALF_DBM2 ; 
 int /*<<< orphan*/  CFG_TPC_HALF_DBM5 ; 
 int /*<<< orphan*/  CFG_TP_SCALE ; 
 int /*<<< orphan*/  CFG_WME_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct uath_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_ADDR_LEN ; 
 struct ieee80211vap* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TARGET_DEVICE_AWAKE ; 
 int /*<<< orphan*/  FUNC2 (struct uath_softc*) ; 
 size_t UATH_BULK_RX ; 
 int /*<<< orphan*/  UATH_CMD_FLAG_MAGIC ; 
 int /*<<< orphan*/  UATH_DEBUG_INIT ; 
 int /*<<< orphan*/  UATH_FILTER_OP_INIT ; 
 int /*<<< orphan*/  UATH_FILTER_OP_SET ; 
 int UATH_FILTER_RX_BCAST ; 
 int UATH_FILTER_RX_BEACON ; 
 int UATH_FILTER_RX_MCAST ; 
 int UATH_FILTER_RX_UCAST ; 
 int UATH_FLAG_INITDONE ; 
 int /*<<< orphan*/  WDCMSG_BIND ; 
 int /*<<< orphan*/  WDCMSG_RESET_KEY_CACHE ; 
 int /*<<< orphan*/  WDCMSG_SET_PWR_MODE ; 
 int /*<<< orphan*/  WDCMSG_TARGET_START ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int FUNC7 (struct uath_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct uath_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct uath_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct uath_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct uath_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct uath_softc*) ; 
 int FUNC14 (struct uath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uath_watchdog ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(struct uath_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC1(&ic->ic_vaps);
	uint32_t val;
	int error;

	FUNC2(sc);

	if (sc->sc_flags & UATH_FLAG_INITDONE)
		FUNC13(sc);

	/* reset variables */
	sc->sc_intrx_nextnum = sc->sc_msgid = 0;

	val = FUNC6(0);
	FUNC8(sc, WDCMSG_BIND, &val, sizeof val, 0);

	/* set MAC address */
	FUNC11(sc, CFG_MAC_ADDR,
	    vap ? vap->iv_myaddr : ic->ic_macaddr, IEEE80211_ADDR_LEN);

	/* XXX honor net80211 state */
	FUNC10(sc, CFG_RATE_CONTROL_ENABLE, 0x00000001);
	FUNC10(sc, CFG_DIVERSITY_CTL, 0x00000001);
	FUNC10(sc, CFG_ABOLT, 0x0000003f);
	FUNC10(sc, CFG_WME_ENABLED, 0x00000001);

	FUNC10(sc, CFG_SERVICE_TYPE, 1);
	FUNC10(sc, CFG_TP_SCALE, 0x00000000);
	FUNC10(sc, CFG_TPC_HALF_DBM5, 0x0000003c);
	FUNC10(sc, CFG_TPC_HALF_DBM2, 0x0000003c);
	FUNC10(sc, CFG_OVERRD_TX_POWER, 0x00000000);
	FUNC10(sc, CFG_GMODE_PROTECTION, 0x00000000);
	FUNC10(sc, CFG_GMODE_PROTECT_RATE_INDEX, 0x00000003);
	FUNC10(sc, CFG_PROTECTION_TYPE, 0x00000000);
	FUNC10(sc, CFG_MODE_CTS, 0x00000002);

	error = FUNC7(sc, WDCMSG_TARGET_START, NULL, 0,
	    &val, sizeof(val), UATH_CMD_FLAG_MAGIC);
	if (error) {
		FUNC5(sc->sc_dev,
		    "could not start target, error %d\n", error);
		goto fail;
	}
	FUNC0(sc, UATH_DEBUG_INIT, "%s returns handle: 0x%x\n",
	    FUNC9(WDCMSG_TARGET_START), FUNC3(val));

	/* set default channel */
	error = FUNC14(sc, ic->ic_curchan);
	if (error) {
		FUNC5(sc->sc_dev,
		    "could not switch channel, error %d\n", error);
		goto fail;
	}

	val = FUNC6(TARGET_DEVICE_AWAKE);
	FUNC8(sc, WDCMSG_SET_PWR_MODE, &val, sizeof val, 0);
	/* XXX? check */
	FUNC8(sc, WDCMSG_RESET_KEY_CACHE, NULL, 0, 0);

	FUNC15(sc->sc_xfer[UATH_BULK_RX]);
	/* enable Rx */
	FUNC12(sc, 0x0, UATH_FILTER_OP_INIT);
	FUNC12(sc,
	    UATH_FILTER_RX_UCAST | UATH_FILTER_RX_MCAST |
	    UATH_FILTER_RX_BCAST | UATH_FILTER_RX_BEACON,
	    UATH_FILTER_OP_SET);

	sc->sc_flags |= UATH_FLAG_INITDONE;

	FUNC4(&sc->watchdog_ch, hz, uath_watchdog, sc);

	return (0);

fail:
	FUNC13(sc);
	return (error);
}