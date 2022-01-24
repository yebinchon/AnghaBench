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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct fman_softc {TYPE_1__ sc_base; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  scalar_t__ pcell_t ;
typedef  int /*<<< orphan*/  fman_clock ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

uint32_t
FUNC3(struct fman_softc *sc)
{
	device_t dev;
	phandle_t node;
	pcell_t fman_clock;

	dev = sc->sc_base.dev;
	node = FUNC2(dev);

	if ((FUNC0(node, "clock-frequency", &fman_clock,
	    sizeof(fman_clock)) <= 0) || (fman_clock == 0)) {
		FUNC1(dev, "could not acquire correct frequency "
		    "from DTS\n");

		return (0);
	}

	return ((uint32_t)fman_clock);
}