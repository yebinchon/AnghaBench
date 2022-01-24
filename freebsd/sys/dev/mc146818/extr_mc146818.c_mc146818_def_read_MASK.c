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
typedef  int /*<<< orphan*/  u_int ;
struct mc146818_softc {int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  MC_ADDR ; 
 int /*<<< orphan*/  MC_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mc146818_softc* FUNC2 (int /*<<< orphan*/ ) ; 

u_int
FUNC3(device_t dev, u_int reg)
{
	struct mc146818_softc *sc;

	sc = FUNC2(dev);
	FUNC1(sc->sc_bst, sc->sc_bsh, MC_ADDR, reg);
	return (FUNC0(sc->sc_bst, sc->sc_bsh, MC_DATA));
}