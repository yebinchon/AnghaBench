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
struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int /*<<< orphan*/  name; } ;
struct g_mountver_softc {struct g_mountver_softc* sc_provider_name; } ;
struct g_geom {struct g_mountver_softc* softc; int /*<<< orphan*/  name; int /*<<< orphan*/  provider; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 struct g_provider* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct g_mountver_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct g_geom*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct g_provider*,int) ; 

__attribute__((used)) static int
FUNC7(struct g_geom *gp, boolean_t force)
{
	struct g_mountver_softc *sc;
	struct g_provider *pp;

	FUNC4();
	if (gp->softc == NULL)
		return (ENXIO);
	sc = gp->softc;
	pp = FUNC1(&gp->provider);
	if (pp != NULL && (pp->acr != 0 || pp->acw != 0 || pp->ace != 0)) {
		if (force) {
			FUNC0(0, "Device %s is still open, so it "
			    "can't be definitely removed.", pp->name);
		} else {
			FUNC0(1, "Device %s is still open (r%dw%de%d).",
			    pp->name, pp->acr, pp->acw, pp->ace);
			return (EBUSY);
		}
	} else {
		FUNC0(0, "Device %s removed.", gp->name);
	}
	if (pp != NULL)
		FUNC6(pp, ENXIO);
	FUNC3(gp);
	FUNC2(sc->sc_provider_name);
	FUNC2(gp->softc);
	gp->softc = NULL;
	FUNC5(gp, ENXIO);

	return (0);
}