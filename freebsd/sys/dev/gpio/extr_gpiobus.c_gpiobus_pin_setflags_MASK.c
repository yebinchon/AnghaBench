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
typedef  size_t uint32_t ;
struct gpiobus_softc {int /*<<< orphan*/  sc_dev; } ;
struct gpiobus_ivar {size_t npins; int /*<<< orphan*/ * pins; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 struct gpiobus_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
 struct gpiobus_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC4 (size_t,size_t) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child, uint32_t pin, 
    uint32_t flags)
{
	struct gpiobus_softc *sc = FUNC1(dev);
	struct gpiobus_ivar *devi = FUNC0(child);
	uint32_t caps;

	if (pin >= devi->npins)
		return (EINVAL);
	if (FUNC2(sc->sc_dev, devi->pins[pin], &caps) != 0)
		return (EINVAL);
	if (FUNC4(caps, flags) != 0)
		return (EINVAL);

	return (FUNC3(sc->sc_dev, devi->pins[pin], flags));
}