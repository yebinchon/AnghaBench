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
struct mpc85xx_gpio_softc {int /*<<< orphan*/  busdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct mpc85xx_gpio_softc* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static device_t
FUNC1(device_t dev)
{
	struct mpc85xx_gpio_softc *sc;

	sc = FUNC0(dev);

	return (sc->busdev);
}