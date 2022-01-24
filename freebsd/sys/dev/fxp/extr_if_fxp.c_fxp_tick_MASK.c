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
struct fxp_softc {scalar_t__ rx_idle_secs; int /*<<< orphan*/  stat_ch; int /*<<< orphan*/ * miibus; int /*<<< orphan*/  ifp; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FXP_CSR_SCB_COMMAND ; 
 int /*<<< orphan*/  FUNC1 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FXP_MAX_RX_IDLE ; 
 int /*<<< orphan*/  FXP_SCB_COMMAND_CU_DUMPRESET ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct fxp_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fxp_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fxp_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct fxp_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct fxp_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(void *xsc)
{
	struct fxp_softc *sc = xsc;
	if_t ifp = sc->ifp;

	FUNC1(sc, MA_OWNED);

	/* Update statistical counters. */
	FUNC7(sc);

	/*
	 * Release any xmit buffers that have completed DMA. This isn't
	 * strictly necessary to do here, but it's advantagous for mbufs
	 * with external storage to be released in a timely manner rather
	 * than being defered for a potentially long time. This limits
	 * the delay to a maximum of one second.
	 */
	FUNC6(sc);

	/*
	 * If we haven't received any packets in FXP_MAC_RX_IDLE seconds,
	 * then assume the receiver has locked up and attempt to clear
	 * the condition by reprogramming the multicast filter. This is
	 * a work-around for a bug in the 82557 where the receiver locks
	 * up if it gets certain types of garbage in the synchronization
	 * bits prior to the packet header. This bug is supposed to only
	 * occur in 10Mbps mode, but has been seen to occur in 100Mbps
	 * mode as well (perhaps due to a 10/100 speed transition).
	 */
	if (sc->rx_idle_secs > FXP_MAX_RX_IDLE) {
		sc->rx_idle_secs = 0;
		if ((FUNC9(ifp) & IFF_DRV_RUNNING) != 0) {
			FUNC10(ifp, 0, IFF_DRV_RUNNING);
			FUNC4(sc, 1);
		}
		return;
	}
	/*
	 * If there is no pending command, start another stats
	 * dump. Otherwise punt for now.
	 */
	if (FUNC0(sc, FXP_CSR_SCB_COMMAND) == 0) {
		/*
		 * Start another stats dump.
		 */
		FUNC5(sc, FXP_SCB_COMMAND_CU_DUMPRESET);
	}
	if (sc->miibus != NULL)
		FUNC11(FUNC3(sc->miibus));

	/*
	 * Check that chip hasn't hung.
	 */
	FUNC8(sc);

	/*
	 * Schedule another timeout one second from now.
	 */
	FUNC2(&sc->stat_ch, hz, fxp_tick, sc);
}