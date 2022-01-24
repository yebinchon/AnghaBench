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
struct pbio_softc {int iomode; TYPE_1__* pd; int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IO_PBIOSIZE ; 
 int PBIO_NPORTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pbio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pbio_cdevsw ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7 (device_t dev)
{
	int unit;
	int i;
	int		rid;
	struct pbio_softc *sc;

	sc = FUNC2(dev);
	unit = FUNC3(dev);
	rid = 0;
	sc->res = FUNC1(dev, SYS_RES_IOPORT, &rid,
	    IO_PBIOSIZE, RF_ACTIVE);
	if (sc->res == NULL)
		return (ENXIO);
	sc->bst = FUNC6(sc->res);
	sc->bsh = FUNC5(sc->res);

	/*
	 * Store whatever seems wise.
	 */
	sc->iomode = 0x9b;		/* All ports to input */

	for (i = 0; i < PBIO_NPORTS; i++)
		sc->pd[i].port = FUNC4(&pbio_cdevsw, (unit << 2) + i, 0, 0,
		    0600, "pbio%d%s", unit, FUNC0(i));
	return (0);
}