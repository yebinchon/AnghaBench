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
typedef  int /*<<< orphan*/  uint32_t ;
struct intr_irqsrc {int dummy; } ;
struct beripic_softc {int nirqs; int mips_hard_irq_idx; int /*<<< orphan*/ * ih; TYPE_2__* hirq; int /*<<< orphan*/ * res; int /*<<< orphan*/  dev; TYPE_1__* irqs; } ;
struct beri_pic_isrc {scalar_t__ mips_hard_irq; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int irq; struct beripic_softc* sc; } ;
struct TYPE_3__ {int irq; struct intr_irqsrc isrc; } ;

/* Variables and functions */
 size_t BP_CFG ; 
 int BP_NUM_HARD_IRQS ; 
 int BP_NUM_IRQS ; 
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_CLK ; 
 intptr_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  beri_pic_intr ; 
 int /*<<< orphan*/  beri_pic_spec ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 struct beripic_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (struct intr_irqsrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,intptr_t) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,intptr_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct beripic_softc *sc;
	struct beri_pic_isrc *pic_isrc;
	const char *name;
	struct intr_irqsrc *isrc;
	intptr_t xref;
	uint32_t unit;
	int err;
	int i;

	sc = FUNC5(dev);
	sc->dev = dev;

	if (FUNC1(dev, beri_pic_spec, sc->res)) {
		FUNC7(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	xref = FUNC0(FUNC11(dev));
	name = FUNC4(dev);
	unit = FUNC6(dev);
	sc->nirqs = BP_NUM_IRQS;

	for (i = 0; i < sc->nirqs; i++) {
		sc->irqs[i].irq = i;
		isrc = &sc->irqs[i].isrc;

		/* Assign mips hard irq number. */
		pic_isrc = (struct beri_pic_isrc *)isrc;
		pic_isrc->mips_hard_irq = sc->mips_hard_irq_idx++;
		/* Last IRQ is used for IPIs. */
		if (sc->mips_hard_irq_idx >= (BP_NUM_HARD_IRQS - 1)) {
			sc->mips_hard_irq_idx = 0;
		}

		err = FUNC8(isrc, sc->dev,
		    0, "pic%d,%d", unit, i);
		FUNC3(sc->res[BP_CFG], i * 8, 0);
	}

	/*
	 * Now, when everything is initialized, it's right time to
	 * register interrupt controller to interrupt framefork.
	 */
	if (FUNC10(dev, xref) == NULL) {
		FUNC7(dev, "could not register PIC\n");
		return (ENXIO);
	}

	/* Last IRQ is used for IPIs. */
	for (i = 0; i < (BP_NUM_HARD_IRQS - 1); i++) {
		sc->hirq[i].sc = sc;
		sc->hirq[i].irq = i;
		if (FUNC2(dev, sc->res[4+i], INTR_TYPE_CLK,
		    beri_pic_intr, NULL, &sc->hirq[i], sc->ih[i])) {
			FUNC7(dev, "could not setup irq handler\n");
			FUNC9(dev, xref);
			return (ENXIO);
		}
	}

	return (0);
}