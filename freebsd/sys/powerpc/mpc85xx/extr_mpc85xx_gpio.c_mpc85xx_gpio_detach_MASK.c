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
struct mpc85xx_gpio_softc {int /*<<< orphan*/ * in_res; int /*<<< orphan*/ * out_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mpc85xx_gpio_softc*) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mpc85xx_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct mpc85xx_gpio_softc *sc = FUNC2(dev);

	FUNC3(dev);

	if (sc->out_res != NULL) {
		/* Release output port resource. */
		FUNC1(dev, SYS_RES_MEMORY,
				     FUNC4(sc->out_res), sc->out_res);
	}

	if (sc->in_res != NULL) {
		/* Release input port resource. */
		FUNC1(dev, SYS_RES_MEMORY,
				     FUNC4(sc->in_res), sc->in_res);
	}

	FUNC0(sc);

	return (0);
}