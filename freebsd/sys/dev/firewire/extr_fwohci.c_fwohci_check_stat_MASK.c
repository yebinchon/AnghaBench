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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct fwohci_softc {int intmask; int /*<<< orphan*/  itstat; int /*<<< orphan*/  irstat; int /*<<< orphan*/  intstat; TYPE_1__ fc; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int FILTER_STRAY ; 
 int /*<<< orphan*/  FWOHCI_INTSTAT ; 
 int /*<<< orphan*/  FWOHCI_INTSTATCLR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int OHCI_INT_DMA_IR ; 
 int OHCI_INT_DMA_IT ; 
 int OHCI_INT_PHY_BUS_R ; 
 int /*<<< orphan*/  OHCI_IR_STAT ; 
 int /*<<< orphan*/  OHCI_IR_STATCLR ; 
 int /*<<< orphan*/  OHCI_IT_STAT ; 
 int /*<<< orphan*/  OHCI_IT_STATCLR ; 
 int FUNC1 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fwohci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct fwohci_softc*,int,int) ; 

__attribute__((used)) static int
FUNC7(struct fwohci_softc *sc)
{
	uint32_t stat, irstat, itstat;

	FUNC0(&sc->fc);
	stat = FUNC1(sc, FWOHCI_INTSTAT);
	if (stat == 0xffffffff) {
		if (!FUNC4(sc->fc.dev))
			return (FILTER_HANDLED);
		FUNC5(sc->fc.dev, "device physically ejected?\n");
		return (FILTER_STRAY);
	}
	if (stat)
		FUNC2(sc, FWOHCI_INTSTATCLR, stat & ~OHCI_INT_PHY_BUS_R);

	stat &= sc->intmask;
	if (stat == 0)
		return (FILTER_STRAY);

	FUNC3(&sc->intstat, stat);
	if (stat & OHCI_INT_DMA_IR) {
		irstat = FUNC1(sc, OHCI_IR_STAT);
		FUNC2(sc, OHCI_IR_STATCLR, irstat);
		FUNC3(&sc->irstat, irstat);
	}
	if (stat & OHCI_INT_DMA_IT) {
		itstat = FUNC1(sc, OHCI_IT_STAT);
		FUNC2(sc, OHCI_IT_STATCLR, itstat);
		FUNC3(&sc->itstat, itstat);
	}

	FUNC6(sc, stat, -1);
	return (FILTER_HANDLED);
}