#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct mii_data {int /*<<< orphan*/  mii_media_active; } ;
struct ifnet {int /*<<< orphan*/  if_snd; } ;
struct TYPE_2__ {scalar_t__ dc_tx_cnt; } ;
struct dc_softc {int dc_flags; scalar_t__ dc_link; int /*<<< orphan*/  dc_stat_ch; TYPE_1__ dc_cdata; int /*<<< orphan*/  dc_miibus; struct ifnet* dc_ifp; } ;

/* Variables and functions */
 int FUNC0 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_10BTSTAT ; 
 int DC_21143_NWAY ; 
 scalar_t__ FUNC1 (struct dc_softc*) ; 
 int /*<<< orphan*/  DC_ISR ; 
 int DC_ISR_RX_STATE ; 
 int /*<<< orphan*/  FUNC2 (struct dc_softc*) ; 
 int DC_REDUCED_MII_POLL ; 
 int DC_RXSTATE_WAIT ; 
 int DC_TSTAT_LS10 ; 
 int DC_TSTAT_LS100 ; 
 int DC_TX_USE_TX_INTR ; 
 scalar_t__ IFM_100_TX ; 
 scalar_t__ IFM_10_T ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,void (*) (void*),struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (struct dc_softc*) ; 
 struct mii_data* FUNC8 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC9 (struct mii_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC11(void *xsc)
{
	struct dc_softc *sc;
	struct mii_data *mii;
	struct ifnet *ifp;
	uint32_t r;

	sc = xsc;
	FUNC2(sc);
	ifp = sc->dc_ifp;
	mii = FUNC8(sc->dc_miibus);

	/*
	 * Reclaim transmitted frames for controllers that do
	 * not generate TX completion interrupt for every frame.
	 */
	if (sc->dc_flags & DC_TX_USE_TX_INTR)
		FUNC7(sc);

	if (sc->dc_flags & DC_REDUCED_MII_POLL) {
		if (sc->dc_flags & DC_21143_NWAY) {
			r = FUNC0(sc, DC_10BTSTAT);
			if (FUNC3(mii->mii_media_active) ==
			    IFM_100_TX && (r & DC_TSTAT_LS100)) {
				sc->dc_link = 0;
				FUNC9(mii);
			}
			if (FUNC3(mii->mii_media_active) ==
			    IFM_10_T && (r & DC_TSTAT_LS10)) {
				sc->dc_link = 0;
				FUNC9(mii);
			}
			if (sc->dc_link == 0)
				FUNC10(mii);
		} else {
			/*
			 * For NICs which never report DC_RXSTATE_WAIT, we
			 * have to bite the bullet...
			 */
			if ((FUNC1(sc) || (FUNC0(sc,
			    DC_ISR) & DC_ISR_RX_STATE) == DC_RXSTATE_WAIT) &&
			    sc->dc_cdata.dc_tx_cnt == 0)
				FUNC10(mii);
		}
	} else
		FUNC10(mii);

	/*
	 * When the init routine completes, we expect to be able to send
	 * packets right away, and in fact the network code will send a
	 * gratuitous ARP the moment the init routine marks the interface
	 * as running. However, even though the MAC may have been initialized,
	 * there may be a delay of a few seconds before the PHY completes
	 * autonegotiation and the link is brought up. Any transmissions
	 * made during that delay will be lost. Dealing with this is tricky:
	 * we can't just pause in the init routine while waiting for the
	 * PHY to come ready since that would bring the whole system to
	 * a screeching halt for several seconds.
	 *
	 * What we do here is prevent the TX start routine from sending
	 * any packets until a link has been established. After the
	 * interface has been initialized, the tick routine will poll
	 * the state of the PHY until the IFM_ACTIVE flag is set. Until
	 * that time, packets will stay in the send queue, and once the
	 * link comes up, they will be flushed out to the wire.
	 */
	if (sc->dc_link != 0 && !FUNC4(&ifp->if_snd))
		FUNC6(ifp);

	if (sc->dc_flags & DC_21143_NWAY && !sc->dc_link)
		FUNC5(&sc->dc_stat_ch, hz/10, dc_tick, sc);
	else
		FUNC5(&sc->dc_stat_ch, hz, dc_tick, sc);
}