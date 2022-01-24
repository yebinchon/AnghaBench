#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int u_int ;
struct bcm_mips_irqsrc {int ivec; int /*<<< orphan*/  isrc; } ;
struct bcm_mips_cpuirq {scalar_t__ mips_irq; struct bcm_mips_irqsrc* isrc_solo; scalar_t__ sc; } ;
struct TYPE_4__ {TYPE_2__* isrcs; } ;
struct bcm_mips74k_softc {int /*<<< orphan*/  dev; TYPE_1__ bcm_mips; int /*<<< orphan*/  mem; } ;
struct TYPE_6__ {int /*<<< orphan*/  td_intr_frame; } ;
struct TYPE_5__ {int /*<<< orphan*/  isrc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  BCM_MIPS74K_INTR_STATUS ; 
 scalar_t__ BCM_MIPS74K_NUM_INTR ; 
 int FUNC1 (struct bcm_mips_irqsrc*) ; 
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_mips74k_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* curthread ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC10(void *arg)
{
	struct bcm_mips74k_softc	*sc;
	struct bcm_mips_cpuirq		*cpuirq;
	struct bcm_mips_irqsrc		*isrc_solo;
	uint32_t			 oobsel, intr;
	u_int				 i;
	int				 error;

	cpuirq = arg;
	sc = (struct bcm_mips74k_softc*)cpuirq->sc;

	/* Fetch current interrupt state */
	intr = FUNC5(sc->mem, BCM_MIPS74K_INTR_STATUS);

	/* Fetch mask of interrupt vectors routed to this MIPS IRQ */
	FUNC2(cpuirq->mips_irq < BCM_MIPS74K_NUM_INTR,
	    ("invalid irq %u", cpuirq->mips_irq));

	oobsel = FUNC5(sc->mem, FUNC0(cpuirq->mips_irq));

	/* Ignore interrupts not routed to this MIPS IRQ */
	intr &= oobsel;

	/* Handle isrc_solo direct dispatch path */
	isrc_solo = cpuirq->isrc_solo;
	if (isrc_solo != NULL) {
		if (intr & FUNC1(isrc_solo)) {
			error = FUNC8(&isrc_solo->isrc,
			    curthread->td_intr_frame);
			if (error) {
				FUNC6(sc->dev, "Stray interrupt %u "
				    "detected\n", isrc_solo->ivec);
				FUNC4(sc->dev,
				    &isrc_solo->isrc);
			}
		}

		intr &= ~(FUNC1(isrc_solo));
		if (intr == 0)
			return (FILTER_HANDLED);

		/* Report and mask additional stray interrupts */
		while ((i = FUNC7(intr)) != 0) {
			i--; /* Get a 0-offset interrupt. */
			intr &= ~(1 << i);

			FUNC6(sc->dev, "Stray interrupt %u "
				"detected\n", i);
			FUNC3(sc, cpuirq->mips_irq, i);
		}

		return (FILTER_HANDLED);
	}

	/* Standard dispatch path  */
	while ((i = FUNC7(intr)) != 0) {
		i--; /* Get a 0-offset interrupt. */
		intr &= ~(1 << i);

		FUNC2(i < FUNC9(sc->bcm_mips.isrcs), ("invalid ivec %u", i));

		error = FUNC8(&sc->bcm_mips.isrcs[i].isrc,
		    curthread->td_intr_frame);
		if (error) {
			FUNC6(sc->dev, "Stray interrupt %u detected\n",
			    i);
			FUNC3(sc, cpuirq->mips_irq, i);
			continue;
		}
	}

	return (FILTER_HANDLED);
}