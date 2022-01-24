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
struct g_provider {int /*<<< orphan*/  name; struct g_geom* geom; } ;
struct g_mountver_softc {int sc_access_r; int sc_access_w; int sc_access_e; scalar_t__ sc_orphaned; } ;
struct g_geom {struct g_mountver_softc* softc; int /*<<< orphan*/  consumer; } ;
struct g_consumer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct g_consumer* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct g_consumer*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int
FUNC4(struct g_provider *pp, int dr, int dw, int de)
{
	struct g_mountver_softc *sc;
	struct g_geom *gp;
	struct g_consumer *cp;

	FUNC3();

	gp = pp->geom;
	cp = FUNC1(&gp->consumer);
	sc = gp->softc;
	if (sc == NULL && dr <= 0 && dw <= 0 && de <= 0)
		return (0);
	FUNC0(sc != NULL, ("Trying to access withered provider \"%s\".", pp->name));

	sc->sc_access_r += dr;
	sc->sc_access_w += dw;
	sc->sc_access_e += de;

	if (sc->sc_orphaned)
		return (0);

	return (FUNC2(cp, dr, dw, de));
}