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
struct ifmedia {int /*<<< orphan*/  ifm_media; } ;
struct mii_data {struct ifmedia mii_media; } ;
struct ifnet {int if_drv_flags; int if_capenable; } ;
struct dc_softc {int dc_flags; int dc_cachesize; scalar_t__ dc_txthresh; scalar_t__ dc_type; int dc_link; int /*<<< orphan*/  dc_wdog_ch; scalar_t__ dc_wdog_timer; int /*<<< orphan*/  dc_stat_ch; int /*<<< orphan*/  dc_dev; int /*<<< orphan*/  dc_miibus; struct ifnet* dc_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*,int /*<<< orphan*/ ,int) ; 
 int DC_21143_NWAY ; 
 int DC_BURSTLEN_16LONG ; 
 int DC_BURSTLEN_USECA ; 
 int /*<<< orphan*/  DC_BUSCTL ; 
 int DC_BUSCTL_ARBITRATION ; 
 int DC_BUSCTL_MRLE ; 
 int DC_BUSCTL_MRME ; 
 int DC_CACHEALIGN_16LONG ; 
 int DC_CACHEALIGN_32LONG ; 
 int DC_CACHEALIGN_8LONG ; 
 int DC_CACHEALIGN_NONE ; 
 int /*<<< orphan*/  FUNC2 (struct dc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DC_FRAMESDISCARDED ; 
 int /*<<< orphan*/  DC_IMR ; 
 int DC_INTRS ; 
 int /*<<< orphan*/  DC_ISR ; 
 scalar_t__ FUNC3 (struct dc_softc*) ; 
 scalar_t__ FUNC4 (struct dc_softc*) ; 
 scalar_t__ FUNC5 (struct dc_softc*) ; 
 scalar_t__ FUNC6 (struct dc_softc*) ; 
 scalar_t__ FUNC7 (struct dc_softc*) ; 
 scalar_t__ FUNC8 (struct dc_softc*) ; 
 scalar_t__ FUNC9 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct dc_softc*) ; 
 int /*<<< orphan*/  DC_MX_MAGICPACKET ; 
 int DC_MX_MAGIC_98713 ; 
 int DC_MX_MAGIC_98715 ; 
 int /*<<< orphan*/  DC_NETCFG ; 
 int DC_NETCFG_NO_RXCRC ; 
 int DC_NETCFG_RX_ON ; 
 int DC_NETCFG_STORENFWD ; 
 int DC_NETCFG_TX_BACKOFF ; 
 int DC_NETCFG_TX_ON ; 
 int DC_NETCFG_TX_THRESH ; 
 int /*<<< orphan*/  DC_RXADDR ; 
 int FUNC11 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_RXSTART ; 
 int /*<<< orphan*/  FUNC12 (struct dc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DC_SIAGP ; 
 int DC_SIAGP_INT1_EN ; 
 int DC_SIAGP_MD_GP0_OUTPUT ; 
 int DC_SIAGP_MD_GP2_OUTPUT ; 
 int DC_SIAGP_WRITE_EN ; 
 int DC_TULIP_LEDS ; 
 int /*<<< orphan*/  DC_TXADDR ; 
 int FUNC13 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int DC_TXPOLL_1 ; 
 scalar_t__ DC_TXTHRESH_MAX ; 
 int DC_TXTHRESH_MIN ; 
 int DC_TX_POLL ; 
 int DC_TX_STORENFWD ; 
 scalar_t__ DC_TYPE_98713 ; 
 int /*<<< orphan*/  DC_WATCHDOG ; 
 int DC_WDOG_ACTIVITY ; 
 int DC_WDOG_CTLWREN ; 
 int DC_WDOG_HOSTUNJAB ; 
 int DC_WDOG_JABBERCLK ; 
 int DC_WDOG_LINK ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ ENOBUFS ; 
 int IFCAP_POLLING ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 scalar_t__ IFM_HPNA_1 ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct dc_softc*) ; 
 scalar_t__ FUNC19 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC20 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC21 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC22 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC23 (struct dc_softc*) ; 
 int /*<<< orphan*/  dc_tick ; 
 int /*<<< orphan*/  dc_watchdog ; 
 struct mii_data* FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 

__attribute__((used)) static void
FUNC26(struct dc_softc *sc)
{
	struct ifnet *ifp = sc->dc_ifp;
	struct mii_data *mii;
	struct ifmedia *ifm;

	FUNC10(sc);

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
		return;

	mii = FUNC24(sc->dc_miibus);

	/*
	 * Cancel pending I/O and free all RX/TX buffers.
	 */
	FUNC23(sc);
	FUNC21(sc);
	if (FUNC5(sc)) {
		ifm = &mii->mii_media;
		FUNC17(sc, ifm->ifm_media);
	}

	/*
	 * Set cache alignment and burst length.
	 */
	if (FUNC3(sc) || FUNC4(sc) || FUNC8(sc))
		FUNC1(sc, DC_BUSCTL, 0);
	else
		FUNC1(sc, DC_BUSCTL, DC_BUSCTL_MRME | DC_BUSCTL_MRLE);
	/*
	 * Evenly share the bus between receive and transmit process.
	 */
	if (FUNC5(sc))
		FUNC12(sc, DC_BUSCTL, DC_BUSCTL_ARBITRATION);
	if (FUNC4(sc) || FUNC5(sc)) {
		FUNC12(sc, DC_BUSCTL, DC_BURSTLEN_USECA);
	} else {
		FUNC12(sc, DC_BUSCTL, DC_BURSTLEN_16LONG);
	}
	if (sc->dc_flags & DC_TX_POLL)
		FUNC12(sc, DC_BUSCTL, DC_TXPOLL_1);
	switch(sc->dc_cachesize) {
	case 32:
		FUNC12(sc, DC_BUSCTL, DC_CACHEALIGN_32LONG);
		break;
	case 16:
		FUNC12(sc, DC_BUSCTL, DC_CACHEALIGN_16LONG);
		break;
	case 8:
		FUNC12(sc, DC_BUSCTL, DC_CACHEALIGN_8LONG);
		break;
	case 0:
	default:
		FUNC12(sc, DC_BUSCTL, DC_CACHEALIGN_NONE);
		break;
	}

	if (sc->dc_flags & DC_TX_STORENFWD)
		FUNC12(sc, DC_NETCFG, DC_NETCFG_STORENFWD);
	else {
		if (sc->dc_txthresh > DC_TXTHRESH_MAX) {
			FUNC12(sc, DC_NETCFG, DC_NETCFG_STORENFWD);
		} else {
			FUNC2(sc, DC_NETCFG, DC_NETCFG_STORENFWD);
			FUNC12(sc, DC_NETCFG, sc->dc_txthresh);
		}
	}

	FUNC12(sc, DC_NETCFG, DC_NETCFG_NO_RXCRC);
	FUNC2(sc, DC_NETCFG, DC_NETCFG_TX_BACKOFF);

	if (FUNC6(sc) || FUNC7(sc)) {
		/*
		 * The app notes for the 98713 and 98715A say that
		 * in order to have the chips operate properly, a magic
		 * number must be written to CSR16. Macronix does not
		 * document the meaning of these bits so there's no way
		 * to know exactly what they do. The 98713 has a magic
		 * number all its own; the rest all use a different one.
		 */
		FUNC2(sc, DC_MX_MAGICPACKET, 0xFFFF0000);
		if (sc->dc_type == DC_TYPE_98713)
			FUNC12(sc, DC_MX_MAGICPACKET, DC_MX_MAGIC_98713);
		else
			FUNC12(sc, DC_MX_MAGICPACKET, DC_MX_MAGIC_98715);
	}

	if (FUNC9(sc)) {
		/*
		 * setup General Purpose Port mode and data so the tulip
		 * can talk to the MII.
		 */
		FUNC1(sc, DC_SIAGP, DC_SIAGP_WRITE_EN | DC_SIAGP_INT1_EN |
			   DC_SIAGP_MD_GP2_OUTPUT | DC_SIAGP_MD_GP0_OUTPUT);
		FUNC14(10);
		FUNC1(sc, DC_SIAGP, DC_SIAGP_INT1_EN |
			   DC_SIAGP_MD_GP2_OUTPUT | DC_SIAGP_MD_GP0_OUTPUT);
		FUNC14(10);
	}

	FUNC2(sc, DC_NETCFG, DC_NETCFG_TX_THRESH);
	FUNC12(sc, DC_NETCFG, DC_TXTHRESH_MIN);

	/* Init circular RX list. */
	if (FUNC19(sc) == ENOBUFS) {
		FUNC25(sc->dc_dev,
		    "initialization failed: no memory for rx buffers\n");
		FUNC23(sc);
		return;
	}

	/*
	 * Init TX descriptors.
	 */
	FUNC20(sc);

	/*
	 * Load the address of the RX list.
	 */
	FUNC1(sc, DC_RXADDR, FUNC11(sc, 0));
	FUNC1(sc, DC_TXADDR, FUNC13(sc, 0));

	/*
	 * Enable interrupts.
	 */
#ifdef DEVICE_POLLING
	/*
	 * ... but only if we are not polling, and make sure they are off in
	 * the case of polling. Some cards (e.g. fxp) turn interrupts on
	 * after a reset.
	 */
	if (ifp->if_capenable & IFCAP_POLLING)
		CSR_WRITE_4(sc, DC_IMR, 0x00000000);
	else
#endif
	FUNC1(sc, DC_IMR, DC_INTRS);
	FUNC1(sc, DC_ISR, 0xFFFFFFFF);

	/* Initialize TX jabber and RX watchdog timer. */
	if (FUNC8(sc))
		FUNC1(sc, DC_WATCHDOG, DC_WDOG_JABBERCLK |
		    DC_WDOG_HOSTUNJAB);

	/* Enable transmitter. */
	FUNC12(sc, DC_NETCFG, DC_NETCFG_TX_ON);

	/*
	 * If this is an Intel 21143 and we're not using the
	 * MII port, program the LED control pins so we get
	 * link and activity indications.
	 */
	if (sc->dc_flags & DC_TULIP_LEDS) {
		FUNC1(sc, DC_WATCHDOG,
		    DC_WDOG_CTLWREN | DC_WDOG_LINK | DC_WDOG_ACTIVITY);
		FUNC1(sc, DC_WATCHDOG, 0);
	}

	/*
	 * Load the RX/multicast filter. We do this sort of late
	 * because the filter programming scheme on the 21143 and
	 * some clones requires DMAing a setup frame via the TX
	 * engine, and we need the transmitter enabled for that.
	 */
	FUNC22(sc);

	/* Enable receiver. */
	FUNC12(sc, DC_NETCFG, DC_NETCFG_RX_ON);
	FUNC1(sc, DC_RXSTART, 0xFFFFFFFF);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

	FUNC18(sc);

	/* Clear missed frames and overflow counter. */
	FUNC0(sc, DC_FRAMESDISCARDED);

	/* Don't start the ticker if this is a homePNA link. */
	if (FUNC15(mii->mii_media.ifm_media) == IFM_HPNA_1)
		sc->dc_link = 1;
	else {
		if (sc->dc_flags & DC_21143_NWAY)
			FUNC16(&sc->dc_stat_ch, hz/10, dc_tick, sc);
		else
			FUNC16(&sc->dc_stat_ch, hz, dc_tick, sc);
	}

	sc->dc_wdog_timer = 0;
	FUNC16(&sc->dc_wdog_ch, hz, dc_watchdog, sc);
}