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
struct g_provider {struct g_geom* geom; } ;
struct g_nop_softc {int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_physpath; int /*<<< orphan*/  sc_head_delay; } ;
struct g_geom {struct g_nop_softc* softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_GEOM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct g_nop_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct g_provider *pp)
{
	struct g_geom *gp = pp->geom;
	struct g_nop_softc *sc = gp->softc;

	FUNC0(FUNC1(&sc->sc_head_delay),
	    ("delayed request list is not empty"));

	gp->softc = NULL;
	FUNC2(sc->sc_physpath, M_GEOM);
	FUNC4(&sc->sc_lock);
	FUNC3(sc);
}