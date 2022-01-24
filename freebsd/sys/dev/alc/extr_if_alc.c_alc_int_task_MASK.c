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
typedef  int uint32_t ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;
struct alc_softc {int alc_morework; int /*<<< orphan*/  alc_int_task; int /*<<< orphan*/  alc_tq; int /*<<< orphan*/  alc_dev; int /*<<< orphan*/  alc_process_limit; struct ifnet* alc_ifp; } ;

/* Variables and functions */
 int ALC_INTRS ; 
 int /*<<< orphan*/  ALC_INTR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct alc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct alc_softc*) ; 
 int FUNC2 (struct alc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct alc_softc*,int /*<<< orphan*/ ,int) ; 
 int EAGAIN ; 
 int EIO ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int INTR_DIS_INT ; 
 int INTR_DMA_RD_TO_RST ; 
 int INTR_DMA_WR_TO_RST ; 
 int INTR_RX_PKT ; 
 int INTR_TXQ_TO_RST ; 
 int /*<<< orphan*/  FUNC5 (struct alc_softc*) ; 
 int FUNC6 (struct alc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(void *arg, int pending)
{
	struct alc_softc *sc;
	struct ifnet *ifp;
	uint32_t status;
	int more;

	sc = (struct alc_softc *)arg;
	ifp = sc->alc_ifp;

	status = FUNC2(sc, ALC_INTR_STATUS);
	FUNC0(sc);
	if (sc->alc_morework != 0) {
		sc->alc_morework = 0;
		status |= INTR_RX_PKT;
	}
	if ((status & ALC_INTRS) == 0)
		goto done;

	/* Acknowledge interrupts but still disable interrupts. */
	FUNC3(sc, ALC_INTR_STATUS, status | INTR_DIS_INT);

	more = 0;
	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
		if ((status & INTR_RX_PKT) != 0) {
			more = FUNC6(sc, sc->alc_process_limit);
			if (more == EAGAIN)
				sc->alc_morework = 1;
			else if (more == EIO) {
				ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
				FUNC5(sc);
				FUNC1(sc);
				return;
			}
		}
		if ((status & (INTR_DMA_RD_TO_RST | INTR_DMA_WR_TO_RST |
		    INTR_TXQ_TO_RST)) != 0) {
			if ((status & INTR_DMA_RD_TO_RST) != 0)
				FUNC8(sc->alc_dev,
				    "DMA read error! -- resetting\n");
			if ((status & INTR_DMA_WR_TO_RST) != 0)
				FUNC8(sc->alc_dev,
				    "DMA write error! -- resetting\n");
			if ((status & INTR_TXQ_TO_RST) != 0)
				FUNC8(sc->alc_dev,
				    "TxQ reset! -- resetting\n");
			ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
			FUNC5(sc);
			FUNC1(sc);
			return;
		}
		if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
		    !FUNC4(&ifp->if_snd))
			FUNC7(ifp);
	}

	if (more == EAGAIN ||
	    (FUNC2(sc, ALC_INTR_STATUS) & ALC_INTRS) != 0) {
		FUNC1(sc);
		FUNC9(sc->alc_tq, &sc->alc_int_task);
		return;
	}

done:
	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
		/* Re-enable interrupts if we're running. */
		FUNC3(sc, ALC_INTR_STATUS, 0x7FFFFFFF);
	}
	FUNC1(sc);
}