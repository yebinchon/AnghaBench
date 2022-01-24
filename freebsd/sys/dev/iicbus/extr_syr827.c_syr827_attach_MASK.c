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
struct TYPE_2__ {int /*<<< orphan*/  ich_arg; int /*<<< orphan*/  ich_func; } ;
struct syr827_softc {int /*<<< orphan*/ * reg; TYPE_1__ intr_hook; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 struct syr827_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  syr827_start ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct syr827_softc *sc;
	phandle_t node;

	sc = FUNC1(dev);
	node = FUNC4(dev);

	sc->addr = FUNC3(dev);

	sc->intr_hook.ich_func = syr827_start;
	sc->intr_hook.ich_arg = dev;

	if (FUNC0(&sc->intr_hook) != 0)
		return (ENOMEM);

	sc->reg = FUNC5(dev, node);
	if (sc->reg == NULL) {
		FUNC2(dev, "cannot attach regulator\n");
		return (ENXIO);
	}

	return (0);
}