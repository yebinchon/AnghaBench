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
struct chvgpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct chvgpio_softc*) ; 
 int CHVGPIO_PAD_CFG0_GPIOTXSTATE ; 
 int /*<<< orphan*/  FUNC1 (struct chvgpio_softc*) ; 
 int EINVAL ; 
 int FUNC2 (struct chvgpio_softc*,int) ; 
 scalar_t__ FUNC3 (struct chvgpio_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct chvgpio_softc*,int,int) ; 
 struct chvgpio_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, uint32_t pin)
{
	struct chvgpio_softc *sc;
	uint32_t val;

	sc = FUNC5(dev);
	if (FUNC3(sc, pin) != 0)
		return (EINVAL);

	FUNC0(sc);

	/* Toggle the pin */
	val = FUNC2(sc, pin);
	val = val ^ CHVGPIO_PAD_CFG0_GPIOTXSTATE;
	FUNC4(sc, pin, val);

	FUNC1(sc);

	return (0);
}