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
struct mpc85xx_gpio_softc {int /*<<< orphan*/  in_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mpc85xx_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint32_t pin, unsigned int *value)
{
	struct mpc85xx_gpio_softc *sc = FUNC2(dev);

	if (!FUNC0(pin))
		return (EINVAL);

	*value = (FUNC1(sc->in_res, 0) >> (31 - pin)) & 1;

	return (0);
}