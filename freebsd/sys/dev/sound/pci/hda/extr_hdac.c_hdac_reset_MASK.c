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
struct hdac_softc {int num_iss; int num_oss; int num_bss; int /*<<< orphan*/  dev; int /*<<< orphan*/  mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_softc*,int) ; 
 int /*<<< orphan*/  HDAC_CORBCTL ; 
 int /*<<< orphan*/  HDAC_DPIBLBASE ; 
 int /*<<< orphan*/  HDAC_DPIBUBASE ; 
 int /*<<< orphan*/  HDAC_GCTL ; 
 int HDAC_GCTL_CRST ; 
 int /*<<< orphan*/  FUNC2 (struct hdac_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_softc*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDAC_RIRBCTL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC8(struct hdac_softc *sc, int wakeup)
{
	uint32_t gctl;
	int count, i;

	/*
	 * Stop all Streams DMA engine
	 */
	for (i = 0; i < sc->num_iss; i++)
		FUNC6(&sc->mem, FUNC2(sc, i), 0x0);
	for (i = 0; i < sc->num_oss; i++)
		FUNC6(&sc->mem, FUNC3(sc, i), 0x0);
	for (i = 0; i < sc->num_bss; i++)
		FUNC6(&sc->mem, FUNC1(sc, i), 0x0);

	/*
	 * Stop Control DMA engines.
	 */
	FUNC5(&sc->mem, HDAC_CORBCTL, 0x0);
	FUNC5(&sc->mem, HDAC_RIRBCTL, 0x0);

	/*
	 * Reset DMA position buffer.
	 */
	FUNC6(&sc->mem, HDAC_DPIBLBASE, 0x0);
	FUNC6(&sc->mem, HDAC_DPIBUBASE, 0x0);

	/*
	 * Reset the controller. The reset must remain asserted for
	 * a minimum of 100us.
	 */
	gctl = FUNC4(&sc->mem, HDAC_GCTL);
	FUNC6(&sc->mem, HDAC_GCTL, gctl & ~HDAC_GCTL_CRST);
	count = 10000;
	do {
		gctl = FUNC4(&sc->mem, HDAC_GCTL);
		if (!(gctl & HDAC_GCTL_CRST))
			break;
		FUNC0(10);
	} while	(--count);
	if (gctl & HDAC_GCTL_CRST) {
		FUNC7(sc->dev, "Unable to put hdac in reset\n");
		return (ENXIO);
	}

	/* If wakeup is not requested - leave the controller in reset state. */
	if (!wakeup)
		return (0);

	FUNC0(100);
	gctl = FUNC4(&sc->mem, HDAC_GCTL);
	FUNC6(&sc->mem, HDAC_GCTL, gctl | HDAC_GCTL_CRST);
	count = 10000;
	do {
		gctl = FUNC4(&sc->mem, HDAC_GCTL);
		if (gctl & HDAC_GCTL_CRST)
			break;
		FUNC0(10);
	} while (--count);
	if (!(gctl & HDAC_GCTL_CRST)) {
		FUNC7(sc->dev, "Device stuck in reset\n");
		return (ENXIO);
	}

	/*
	 * Wait for codecs to finish their own reset sequence. The delay here
	 * should be of 250us but for some reasons, it's not enough on my
	 * computer. Let's use twice as much as necessary to make sure that
	 * it's reset properly.
	 */
	FUNC0(1000);

	return (0);
}