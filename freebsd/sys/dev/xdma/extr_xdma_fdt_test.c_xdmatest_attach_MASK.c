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
struct TYPE_2__ {struct xdmatest_softc* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct xdmatest_softc {TYPE_1__ config_intrhook; int /*<<< orphan*/  dev; int /*<<< orphan*/  mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct xdmatest_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xdmatest_softc*) ; 
 int /*<<< orphan*/  xdmatest_delayed_attach ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct xdmatest_softc *sc;
	int err;

	sc = FUNC2(dev);
	sc->dev = dev;

	FUNC4(&sc->mtx, FUNC1(dev), "xdmatest", MTX_DEF);

	/* Allocate test memory */
	err = FUNC5(sc);
	if (err != 0) {
		FUNC3(sc->dev, "Can't allocate test memory.\n");
		return (-1);
	}

	/* We'll run test later, but before / mount. */
	sc->config_intrhook.ich_func = xdmatest_delayed_attach;
	sc->config_intrhook.ich_arg = sc;
	if (FUNC0(&sc->config_intrhook) != 0)
		FUNC3(dev, "config_intrhook_establish failed\n");

	return (0);
}