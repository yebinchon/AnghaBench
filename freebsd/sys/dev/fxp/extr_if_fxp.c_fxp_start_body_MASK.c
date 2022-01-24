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
struct mbuf {int dummy; } ;
struct fxp_softc {scalar_t__ tx_queued; int watchdog_timer; int /*<<< orphan*/  cbl_map; int /*<<< orphan*/  cbl_tag; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 int FXP_NTXCB ; 
 scalar_t__ FXP_NTXCB_HIWAT ; 
 int /*<<< orphan*/  FXP_SCB_COMMAND_CU_RESUME ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct fxp_softc*,struct mbuf**) ; 
 int /*<<< orphan*/  FUNC3 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fxp_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct fxp_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct mbuf*) ; 
 struct mbuf* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 struct fxp_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(if_t ifp)
{
	struct fxp_softc *sc = FUNC9(ifp);
	struct mbuf *mb_head;
	int txqueued;

	FUNC0(sc, MA_OWNED);

	if ((FUNC8(ifp) & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING)
		return;

	if (sc->tx_queued > FXP_NTXCB_HIWAT)
		FUNC5(sc);
	/*
	 * We're finished if there is nothing more to add to the list or if
	 * we're all filled up with buffers to transmit.
	 * NOTE: One TxCB is reserved to guarantee that fxp_mc_setup() can add
	 *       a NOP command when needed.
	 */
	txqueued = 0;
	while (!FUNC10(ifp) && sc->tx_queued < FXP_NTXCB - 1) {

		/*
		 * Grab a packet to transmit.
		 */
		mb_head = FUNC7(ifp);
		if (mb_head == NULL)
			break;

		if (FUNC2(sc, &mb_head)) {
			if (mb_head == NULL)
				break;
			FUNC11(ifp, mb_head);
			FUNC12(ifp, IFF_DRV_OACTIVE, 0);
		}
		txqueued++;
		/*
		 * Pass packet to bpf if there is a listener.
		 */
		FUNC6(ifp, mb_head);
	}

	/*
	 * We're finished. If we added to the list, issue a RESUME to get DMA
	 * going again if suspended.
	 */
	if (txqueued > 0) {
		FUNC1(sc->cbl_tag, sc->cbl_map,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
		FUNC4(sc);
		FUNC3(sc, FXP_SCB_COMMAND_CU_RESUME);
		/*
		 * Set a 5 second timer just in case we don't hear
		 * from the card again.
		 */
		sc->watchdog_timer = 5;
	}
}