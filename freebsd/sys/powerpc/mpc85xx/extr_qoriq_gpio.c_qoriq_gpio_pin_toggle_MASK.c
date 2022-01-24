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
struct qoriq_gpio_softc {int /*<<< orphan*/  sc_mem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIO_GPDAT ; 
 int /*<<< orphan*/  FUNC0 (struct qoriq_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct qoriq_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct qoriq_gpio_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, uint32_t pin)
{
	struct qoriq_gpio_softc *sc = FUNC5(dev);
	uint32_t val;

	if (!FUNC2(pin))
		return (EINVAL);

	FUNC0(sc);

	val = FUNC3(sc->sc_mem, GPIO_GPDAT);
	val ^= (1 << (31 - pin));
	FUNC4(sc->sc_mem, GPIO_GPDAT, val);
	
	FUNC1(sc);

	return (0);
}