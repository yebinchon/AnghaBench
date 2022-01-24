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
struct gpioths_softc {int /*<<< orphan*/  callout; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int GPIOTHS_POLLTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct gpioths_softc* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int hz ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct gpioths_softc	*sc;
	device_t		 dev;

	dev = (device_t)arg;
	sc = FUNC2(dev);

	FUNC3(FUNC1(dev), dev);
	FUNC0(&sc->callout, GPIOTHS_POLLTIME * hz);
}