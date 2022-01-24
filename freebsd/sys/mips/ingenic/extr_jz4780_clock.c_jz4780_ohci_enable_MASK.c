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
typedef  int /*<<< orphan*/  uint32_t ;
struct jz4780_clock_softc {int dummy; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jz4780_clock_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct jz4780_clock_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct jz4780_clock_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct jz4780_clock_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JZ_OPCR ; 
 int /*<<< orphan*/  OPCR_SPENDN1 ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct jz4780_clock_softc* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jz4780_clock_devclass ; 

int
FUNC6(void)
{
	device_t dev;
	struct jz4780_clock_softc *sc;
	uint32_t reg;

	dev = FUNC4(jz4780_clock_devclass, 0);
	if (dev == NULL)
		return (-1);

	sc = FUNC5(dev);
	FUNC0(sc);

	/* Do not force port1 to suspend mode */
	reg = FUNC2(sc, JZ_OPCR);
	reg |= OPCR_SPENDN1;
	FUNC3(sc, JZ_OPCR, reg);

	FUNC1(sc);
	return (0);
}