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
struct intr_event {int /*<<< orphan*/  ie_handlers; } ;
struct gt_pci_softc {int /*<<< orphan*/  sc_ioh_icu1; int /*<<< orphan*/  sc_st; int /*<<< orphan*/  sc_ioh_icu2; struct intr_event** sc_eventstab; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FILTER_HANDLED ; 
 int OCW2_EOI ; 
 int FUNC1 (int) ; 
 int OCW2_SELECT ; 
 int OCW2_SL ; 
 int OCW3_P ; 
 int FUNC2 (int) ; 
 int OCW3_POLL_PENDING ; 
 int OCW3_SEL ; 
 int /*<<< orphan*/  PIC_OCW2 ; 
 int /*<<< orphan*/  PIC_OCW3 ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct intr_event*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(void *v)
{
	struct gt_pci_softc *sc = v;
	struct intr_event *event;
	int irq;

	for (;;) {
		FUNC4(sc->sc_st, sc->sc_ioh_icu1, PIC_OCW3,
		    OCW3_SEL | OCW3_P);
		irq = FUNC3(sc->sc_st, sc->sc_ioh_icu1, PIC_OCW3);
		if ((irq & OCW3_POLL_PENDING) == 0)
		{
			return FILTER_HANDLED;
		}

		irq = FUNC2(irq);

		if (irq == 2) {
			FUNC4(sc->sc_st, sc->sc_ioh_icu2,
			    PIC_OCW3, OCW3_SEL | OCW3_P);
			irq = FUNC3(sc->sc_st, sc->sc_ioh_icu2,
			    PIC_OCW3);
			if (irq & OCW3_POLL_PENDING)
				irq = FUNC2(irq) + 8;
			else
				irq = 2;
		}

		event = sc->sc_eventstab[irq];

		if (!event || FUNC0(&event->ie_handlers))
			continue;

		/* TODO: frame instead of NULL? */
		FUNC5(event, NULL);
		/* XXX: Log stray IRQs */

		/* Send a specific EOI to the 8259. */
		if (irq > 7) {
			FUNC4(sc->sc_st, sc->sc_ioh_icu2,
			    PIC_OCW2, OCW2_SELECT | OCW2_EOI | OCW2_SL |
			    FUNC1(irq & 7));
			irq = 2;
		}

		FUNC4(sc->sc_st, sc->sc_ioh_icu1, PIC_OCW2,
		    OCW2_SELECT | OCW2_EOI | OCW2_SL | FUNC1(irq));
	}

	return FILTER_HANDLED;
}