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
struct g_nop_softc {int dummy; } ;
struct g_geom {int /*<<< orphan*/  name; int /*<<< orphan*/  provider; struct g_nop_softc* softc; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 struct g_provider* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct g_geom*,int) ; 

__attribute__((used)) static int
FUNC4(struct g_geom *gp, boolean_t force)
{
	struct g_nop_softc *sc;
	struct g_provider *pp;

	FUNC2();
	sc = gp->softc;
	if (sc == NULL)
		return (ENXIO);
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

	FUNC3(gp, ENXIO);

	return (0);
}