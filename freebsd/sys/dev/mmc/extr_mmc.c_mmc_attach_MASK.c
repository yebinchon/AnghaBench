#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct mmc_softc* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct mmc_softc {TYPE_1__ config_intrhook; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_softc*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 struct mmc_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mmc_delayed_attach ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct mmc_softc *sc;

	sc = FUNC2(dev);
	sc->dev = dev;
	FUNC0(sc);

	/* We'll probe and attach our children later, but before / mount */
	sc->config_intrhook.ich_func = mmc_delayed_attach;
	sc->config_intrhook.ich_arg = sc;
	if (FUNC1(&sc->config_intrhook) != 0)
		FUNC3(dev, "config_intrhook_establish failed\n");
	return (0);
}