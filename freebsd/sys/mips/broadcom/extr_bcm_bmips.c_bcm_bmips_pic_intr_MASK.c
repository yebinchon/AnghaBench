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
struct bcm_mips_cpuirq {int mips_irq; struct bcm_mips_irqsrc* isrc_solo; scalar_t__ sc; } ;
struct TYPE_4__ {TYPE_2__* isrcs; } ;
struct bcm_bmips_softc {int /*<<< orphan*/  dev; TYPE_1__ bcm_mips; int /*<<< orphan*/  cfg; } ;
struct TYPE_6__ {int /*<<< orphan*/  td_intr_frame; } ;
struct TYPE_5__ {int /*<<< orphan*/  isrc; } ;

/* Variables and functions */
 int FUNC0 (struct bcm_mips_irqsrc*) ; 
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  SIBA_CFG0_FLAGST ; 
 int /*<<< orphan*/  SIBA_CFG0_INTVEC ; 
 int /*<<< orphan*/  SIBA_CFG0_IPSFLAG ; 
 int SIBA_IPS_INT1_MASK ; 
 int SIBA_IPS_INT1_SHIFT ; 
 int SIBA_IPS_INT2_MASK ; 
 int SIBA_IPS_INT2_SHIFT ; 
 int SIBA_IPS_INT3_MASK ; 
 int SIBA_IPS_INT3_SHIFT ; 
 int SIBA_IPS_INT4_MASK ; 
 int SIBA_IPS_INT4_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_bmips_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* curthread ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 

__attribute__((used)) static int
FUNC10(void *arg)
{
	struct bcm_bmips_softc	*sc;
	struct bcm_mips_cpuirq	*cpuirq;
	struct bcm_mips_irqsrc	*isrc_solo;
	uint32_t		 sbintvec, sbstatus;
	u_int			 mips_irq, i;
	int			 error;

	cpuirq = arg;
	sc = (struct bcm_bmips_softc*)cpuirq->sc;

	/* Fetch current interrupt state */
	sbstatus = FUNC4(sc->cfg, SIBA_CFG0_FLAGST);

	/* Fetch mask of interrupt vectors routed to this MIPS IRQ */
	mips_irq = cpuirq->mips_irq;
	if (mips_irq == 0) {
		sbintvec = FUNC4(sc->cfg, SIBA_CFG0_INTVEC);
	} else {
		uint32_t ipsflag;

		ipsflag = FUNC4(sc->cfg, SIBA_CFG0_IPSFLAG);

		/* Map to an intvec-compatible representation */
		switch (mips_irq) {
		case 1:
			sbintvec = (ipsflag & SIBA_IPS_INT1_MASK) >>
			    SIBA_IPS_INT1_SHIFT;
			break;
		case 2:
			sbintvec = (ipsflag & SIBA_IPS_INT2_MASK) >>
			    SIBA_IPS_INT2_SHIFT;
			break;
		case 3:
			sbintvec = (ipsflag & SIBA_IPS_INT3_MASK) >>
			    SIBA_IPS_INT3_SHIFT;
			break;
		case 4: 
			sbintvec = (ipsflag & SIBA_IPS_INT4_MASK) >>
			    SIBA_IPS_INT4_SHIFT;
			break;
		default:
			FUNC9("invalid irq %u", mips_irq);
		}
	}

	/* Ignore interrupts not routed to this MIPS IRQ */
	sbstatus &= sbintvec;

	/* Handle isrc_solo direct dispatch path */
	isrc_solo = cpuirq->isrc_solo;
	if (isrc_solo != NULL) {
		if (sbstatus & FUNC0(isrc_solo)) {
			error = FUNC7(&isrc_solo->isrc,
			    curthread->td_intr_frame);
			if (error) {
				FUNC5(sc->dev, "Stray interrupt %u "
				    "detected\n", isrc_solo->ivec);
				FUNC3(sc->dev,
				    &isrc_solo->isrc);
			}
		}

		sbstatus &= ~(FUNC0(isrc_solo));
		if (sbstatus == 0)
			return (FILTER_HANDLED);

		/* Report and mask additional stray interrupts */
		while ((i = FUNC6(sbstatus)) != 0) {
			i--; /* Get a 0-offset interrupt. */
			sbstatus &= ~(1 << i);

			FUNC5(sc->dev, "Stray interrupt %u "
				"detected\n", i);
			FUNC2(sc, mips_irq, i);
		}

		return (FILTER_HANDLED);
	}

	/* Standard dispatch path  */
	while ((i = FUNC6(sbstatus)) != 0) {
		i--; /* Get a 0-offset interrupt. */
		sbstatus &= ~(1 << i);

		FUNC1(i < FUNC8(sc->bcm_mips.isrcs), ("invalid ivec %u", i));

		error = FUNC7(&sc->bcm_mips.isrcs[i].isrc,
		    curthread->td_intr_frame);
		if (error) {
			FUNC5(sc->dev, "Stray interrupt %u detected\n",
			    i);
			FUNC2(sc, mips_irq, i);
			continue;
		}
	}

	return (FILTER_HANDLED);
}