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
struct simple_mfd_softc {int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * syscon; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_SYSCON ; 
 int /*<<< orphan*/  FUNC0 (struct simple_mfd_softc*) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct simple_mfd_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct simple_mfd_softc *sc;

	sc = FUNC2(dev);
	if (FUNC4(dev, "syscon")) {
		if (sc->syscon != NULL) {
			FUNC5(sc->syscon);
			FUNC3(sc->syscon, M_SYSCON);
		}

		FUNC0(sc);

		if (sc->mem_res != NULL)
			FUNC1(dev, SYS_RES_MEMORY, 0,
			    sc->mem_res);
	}
	return (0);
}