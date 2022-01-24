#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int u_int ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct fwohci_softc {int cycle_lost; int /*<<< orphan*/  atrs; int /*<<< orphan*/  atrq; int /*<<< orphan*/  arrq; int /*<<< orphan*/  arrs; int /*<<< orphan*/  itstat; TYPE_2__ fc; struct fwohci_dbch* ir; int /*<<< orphan*/  irstat; } ;
struct TYPE_3__ {int flag; } ;
struct fwohci_dbch {TYPE_1__ xferq; } ;
struct firewire_comm {int nisodma; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARRQ_CH ; 
 int /*<<< orphan*/  ARRS_CH ; 
 int /*<<< orphan*/  FWOHCI_INTMASKCLR ; 
 int FWXFERQ_OPEN ; 
 int OHCI_CNTL_CYCTIMER ; 
 int OHCI_INT_CYC_LOST ; 
 int OHCI_INT_DMA_ATRQ ; 
 int OHCI_INT_DMA_ATRS ; 
 int OHCI_INT_DMA_IR ; 
 int OHCI_INT_DMA_IT ; 
 int OHCI_INT_DMA_PRRQ ; 
 int OHCI_INT_DMA_PRRS ; 
 int OHCI_INT_ERR ; 
 int OHCI_INT_PHY_INT ; 
 int OHCI_INT_PW_ERR ; 
 int /*<<< orphan*/  OHCI_LNKCTLCLR ; 
 int /*<<< orphan*/  FUNC0 (struct fwohci_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fwohci_softc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fwohci_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fwohci_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct fwohci_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct fwohci_softc *sc, uint32_t stat, int count)
{
	uint32_t irstat, itstat;
	u_int i;
	struct firewire_comm *fc = (struct firewire_comm *)sc;

	if (stat & OHCI_INT_DMA_IR) {
		irstat = FUNC1(&sc->irstat);
		for (i = 0; i < fc->nisodma; i++) {
			struct fwohci_dbch *dbch;

			if ((irstat & (1 << i)) != 0) {
				dbch = &sc->ir[i];
				if ((dbch->xferq.flag & FWXFERQ_OPEN) == 0) {
					FUNC2(sc->fc.dev,
						"dma(%d) not active\n", i);
					continue;
				}
				FUNC6(sc, i);
			}
		}
	}
	if (stat & OHCI_INT_DMA_IT) {
		itstat = FUNC1(&sc->itstat);
		for (i = 0; i < fc->nisodma; i++) {
			if ((itstat & (1 << i)) != 0) {
				FUNC7(sc, i);
			}
		}
	}
	if (stat & OHCI_INT_DMA_PRRS) {
#if 0
		dump_dma(sc, ARRS_CH);
		dump_db(sc, ARRS_CH);
#endif
		FUNC5(sc, &sc->arrs, count);
	}
	if (stat & OHCI_INT_DMA_PRRQ) {
#if 0
		dump_dma(sc, ARRQ_CH);
		dump_db(sc, ARRQ_CH);
#endif
		FUNC5(sc, &sc->arrq, count);
	}
	if (stat & OHCI_INT_CYC_LOST) {
		if (sc->cycle_lost >= 0)
			sc->cycle_lost++;
		if (sc->cycle_lost > 10) {
			sc->cycle_lost = -1;
#if 0
			OWRITE(sc, OHCI_LNKCTLCLR, OHCI_CNTL_CYCTIMER);
#endif
			FUNC0(sc, FWOHCI_INTMASKCLR, OHCI_INT_CYC_LOST);
			FUNC2(fc->dev, "too many cycles lost, "
			 "no cycle master present?\n");
		}
	}
	if (stat & OHCI_INT_DMA_ATRQ) {
		FUNC8(sc, &(sc->atrq));
	}
	if (stat & OHCI_INT_DMA_ATRS) {
		FUNC8(sc, &(sc->atrs));
	}
	if (stat & OHCI_INT_PW_ERR) {
		FUNC2(fc->dev, "posted write error\n");
	}
	if (stat & OHCI_INT_ERR) {
		FUNC2(fc->dev, "unrecoverable error\n");
	}
	if (stat & OHCI_INT_PHY_INT) {
		FUNC2(fc->dev, "phy int\n");
	}
}