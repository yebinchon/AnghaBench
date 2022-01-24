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
struct trapframe {int dummy; } ;
struct thread {struct trapframe* td_intr_frame; } ;
struct intr_event {int /*<<< orphan*/  ie_handlers; } ;
struct apb_softc {int /*<<< orphan*/ * sc_intr_counter; struct intr_event** sc_eventstab; } ;

/* Variables and functions */
 int APB_INTR_PMC ; 
 int APB_NIRQS ; 
 int /*<<< orphan*/  AR71XX_MISC_INTR_STATUS ; 
#define  AR71XX_SOC_AR7240 139 
#define  AR71XX_SOC_AR7241 138 
#define  AR71XX_SOC_AR7242 137 
#define  AR71XX_SOC_AR9330 136 
#define  AR71XX_SOC_AR9331 135 
#define  AR71XX_SOC_AR9341 134 
#define  AR71XX_SOC_AR9342 133 
#define  AR71XX_SOC_AR9344 132 
#define  AR71XX_SOC_QCA9533 131 
#define  AR71XX_SOC_QCA9533_V2 130 
#define  AR71XX_SOC_QCA9556 129 
#define  AR71XX_SOC_QCA9558 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FILTER_HANDLED ; 
 struct thread* FUNC3 (int /*<<< orphan*/ ) ; 
 int ar71xx_soc ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC4 (struct intr_event*,struct trapframe*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct trapframe*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct trapframe*) ; 

__attribute__((used)) static int
FUNC9(void *arg)
{
	struct apb_softc *sc = arg;
	struct intr_event *event;
	uint32_t reg, irq;
	struct thread *td;
	struct trapframe *tf;

	reg = FUNC0(AR71XX_MISC_INTR_STATUS);
	for (irq = 0; irq < APB_NIRQS; irq++) {
		if (reg & (1 << irq)) {

			switch (ar71xx_soc) {
			case AR71XX_SOC_AR7240:
			case AR71XX_SOC_AR7241:
			case AR71XX_SOC_AR7242:
			case AR71XX_SOC_AR9330:
			case AR71XX_SOC_AR9331:
			case AR71XX_SOC_AR9341:
			case AR71XX_SOC_AR9342:
			case AR71XX_SOC_AR9344:
			case AR71XX_SOC_QCA9533:
			case AR71XX_SOC_QCA9533_V2:
			case AR71XX_SOC_QCA9556:
			case AR71XX_SOC_QCA9558:
				/* ACK/clear the given interrupt */
				FUNC1(AR71XX_MISC_INTR_STATUS,
				    (1 << irq));
				break;
			default:
				/* fallthrough */
				break;
			}

			event = sc->sc_eventstab[irq];
			/* always count interrupts; spurious or otherwise */
			FUNC5(sc->sc_intr_counter[irq]);
			if (!event || FUNC2(&event->ie_handlers)) {
				if (irq == APB_INTR_PMC) {
					td = FUNC3(curthread);
					tf = td->td_intr_frame;

					if (&pmc_intr)
						FUNC6)(tf);
					continue;
				}
				/* Ignore timer interrupts */
				if (irq != 0 && irq != 8 && irq != 9 && irq != 10)
					FUNC7("Stray APB IRQ %d\n", irq);
				continue;
			}

			FUNC4(event, FUNC3(curthread)->td_intr_frame);
		}
	}

	return (FILTER_HANDLED);
}