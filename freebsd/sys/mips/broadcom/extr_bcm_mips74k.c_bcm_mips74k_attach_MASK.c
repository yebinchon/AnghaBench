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
typedef  size_t u_int ;
struct bcm_mips74k_softc {int /*<<< orphan*/ * mem; scalar_t__ mem_rid; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 size_t FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 size_t BCM_MIPS74K_NUM_INTR ; 
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  bcm_mips74k_pic_intr ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bcm_mips74k_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct bcm_mips74k_softc	*sc;
	u_int				 timer_irq;
	int				 error;

	sc = FUNC6(dev);
	sc->dev = dev;

	/* Allocate our core's register block */
	sc->mem_rid = 0;
	sc->mem = FUNC3(dev, SYS_RES_MEMORY, &sc->mem_rid,
	    RF_ACTIVE);
	if (sc->mem == NULL) {
		FUNC7(dev, "failed to allocate cpu register block\n");
		return (ENXIO);
	}

	/* Clear interrupt map */
	timer_irq = FUNC0();
	for (size_t i = 0; i < BCM_MIPS74K_NUM_INTR; i++) {
		/* We don't use the timer IRQ; leave it routed to the
		 * MIPS CPU */
		if (i == timer_irq)
			continue;

		FUNC5(sc->mem, FUNC1(i), 0);
	}

	/* Initialize the generic BHND MIPS driver state */
	error = FUNC2(dev, BCM_MIPS74K_NUM_INTR, timer_irq,
	    bcm_mips74k_pic_intr);
	if (error) {
		FUNC4(dev, SYS_RES_MEMORY, sc->mem_rid, sc->mem);
		return (error);
	}

	return (0);
}