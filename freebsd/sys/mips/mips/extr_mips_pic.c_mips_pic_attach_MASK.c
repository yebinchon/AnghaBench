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
struct mips_pic_softc {int /*<<< orphan*/  pic_irqs; int /*<<< orphan*/  nirqs; int /*<<< orphan*/  pic_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 struct mips_pic_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,intptr_t,int /*<<< orphan*/ ,struct mips_pic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,intptr_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,intptr_t) ; 
 int /*<<< orphan*/  mips_pic_intr ; 
 scalar_t__ FUNC5 (struct mips_pic_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct mips_pic_softc* pic_sc ; 
 intptr_t FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct		mips_pic_softc *sc;
	intptr_t	xref = FUNC7(dev);

	if (pic_sc)
		return (ENXIO);

	sc = FUNC0(dev);

	sc->pic_dev = dev;
	pic_sc = sc;

	/* Set the number of interrupts */
	sc->nirqs = FUNC6(sc->pic_irqs);

	/* Register the interrupts */
	if (FUNC5(sc) != 0) {
		FUNC1(dev, "could not register PIC ISRCs\n");
		goto cleanup;
	}

	/*
	 * Now, when everything is initialized, it's right time to
	 * register interrupt controller to interrupt framefork.
	 */
	if (FUNC4(dev, xref) == NULL) {
		FUNC1(dev, "could not register PIC\n");
		goto cleanup;
	}

	/* Claim our root controller role */
	if (FUNC2(dev, xref, mips_pic_intr, sc, 0) != 0) {
		FUNC1(dev, "could not set PIC as a root\n");
		FUNC3(dev, xref);
		goto cleanup;
	}

	return (0);

cleanup:
	return(ENXIO);
}