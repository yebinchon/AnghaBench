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
struct bman_softc {int /*<<< orphan*/ * sc_rres; int /*<<< orphan*/  sc_rrid; int /*<<< orphan*/ * sc_ires; int /*<<< orphan*/  sc_irid; int /*<<< orphan*/ * sc_bh; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct bman_softc* FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(device_t dev)
{
	struct bman_softc *sc;

	sc = FUNC2(dev);

	if (sc->sc_bh != NULL)
		FUNC0(sc->sc_bh);

	if (sc->sc_ires != NULL)
		FUNC1(dev, SYS_RES_IRQ,
		    sc->sc_irid, sc->sc_ires);

	if (sc->sc_rres != NULL)
		FUNC1(dev, SYS_RES_MEMORY,
		    sc->sc_rrid, sc->sc_rres);

	return (0);
}