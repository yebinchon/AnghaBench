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
struct macio_softc {int /*<<< orphan*/  sc_memr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ KEYLARGO_EXTINT_GPIO_REG_BASE ; 
 int KEYLARGO_FCR2 ; 
 scalar_t__ KEYLARGO_GPIO_BASE ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 struct macio_softc* FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(device_t dev, bool enable)
{
	struct macio_softc *sc = FUNC4(dev);
	uint32_t x;

	if (enable) {
		x = FUNC1(sc->sc_memr, KEYLARGO_FCR2);
		x |= 0x4;
		FUNC3(sc->sc_memr, KEYLARGO_FCR2, x);

		/* Enable card slot. */
		FUNC2(sc->sc_memr, KEYLARGO_GPIO_BASE + 0x0f, 5);
		FUNC0(1000);
		FUNC2(sc->sc_memr, KEYLARGO_GPIO_BASE + 0x0f, 4);
		FUNC0(1000);
		x = FUNC1(sc->sc_memr, KEYLARGO_FCR2);
		x &= ~0x80000000;

		FUNC3(sc->sc_memr, KEYLARGO_FCR2, x);
		/* out8(gpio + 0x10, 4); */

		FUNC2(sc->sc_memr, KEYLARGO_EXTINT_GPIO_REG_BASE + 0x0b, 0);
		FUNC2(sc->sc_memr, KEYLARGO_EXTINT_GPIO_REG_BASE + 0x0a, 0x28);
		FUNC2(sc->sc_memr, KEYLARGO_EXTINT_GPIO_REG_BASE + 0x0d, 0x28);
		FUNC2(sc->sc_memr, KEYLARGO_GPIO_BASE + 0x0d, 0x28);
		FUNC2(sc->sc_memr, KEYLARGO_GPIO_BASE + 0x0e, 0x28);
		FUNC3(sc->sc_memr, 0x1c000, 0);

		/* Initialize the card. */
		FUNC3(sc->sc_memr, 0x1a3e0, 0x41);
		x = FUNC1(sc->sc_memr, KEYLARGO_FCR2);
		x |= 0x80000000;
		FUNC3(sc->sc_memr, KEYLARGO_FCR2, x);
	} else {
		x = FUNC1(sc->sc_memr, KEYLARGO_FCR2);
		x &= ~0x4;
		FUNC3(sc->sc_memr, KEYLARGO_FCR2, x);
		/* out8(gpio + 0x10, 0); */
	}

	return (0);
}