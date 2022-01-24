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
struct bcm_bmips_softc {int mem_rid; int cfg_rid; int /*<<< orphan*/ * cfg; int /*<<< orphan*/ * mem; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCM_BMIPS_NCPU_IRQS ; 
 int /*<<< orphan*/  BCM_BMIPS_TIMER_IRQ ; 
 int /*<<< orphan*/  BHND_PORT_AGENT ; 
 int ENXIO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SIBA_CFG0_INTVEC ; 
 int /*<<< orphan*/  SIBA_CFG0_IPSFLAG ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  bcm_bmips_pic_intr ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct bcm_bmips_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct bcm_bmips_softc	*sc;
	int			 error;

	sc = FUNC5(dev);
	sc->dev = dev;

	/* Allocate our core's register block */
	sc->mem_rid = 0;
	sc->mem = FUNC2(dev, SYS_RES_MEMORY, &sc->mem_rid,
	    RF_ACTIVE);
	if (sc->mem == NULL) {
		FUNC6(dev, "failed to allocate cpu register block\n");
		error = ENXIO;
		goto failed;
	}

	/* Determine the resource ID for our siba CFG0 registers */
	sc->cfg_rid = FUNC1(dev, BHND_PORT_AGENT, 0, 0);
	if (sc->cfg_rid == -1) {
		FUNC6(dev, "missing required cfg0 register block\n");
		error = ENXIO;
		goto failed;
	}

	/* Allocate our CFG0 register block */
	sc->cfg = FUNC2(dev, SYS_RES_MEMORY, &sc->cfg_rid,
	    RF_ACTIVE|RF_SHAREABLE);
	if (sc->cfg == NULL) {
		FUNC6(dev, "failed to allocate cfg0 register block\n");
		error = ENXIO;
		goto failed;
	}

	/* Clear interrupt map */
	FUNC4(sc->cfg, SIBA_CFG0_INTVEC, 0x0);	/* MIPS IRQ0 */
	FUNC4(sc->cfg, SIBA_CFG0_IPSFLAG, 0x0);	/* MIPS IRQ1-4 */

	/* Initialize the generic BHND MIPS driver state */
	error = FUNC0(dev, BCM_BMIPS_NCPU_IRQS, BCM_BMIPS_TIMER_IRQ,
	    bcm_bmips_pic_intr);
	if (error)
		goto failed;

	return (0);

failed:
	if (sc->mem != NULL)
		FUNC3(dev, SYS_RES_MEMORY, sc->mem_rid, sc->mem);

	if (sc->cfg != NULL)
		FUNC3(dev, SYS_RES_MEMORY, sc->cfg_rid, sc->cfg);

	return (error);
}