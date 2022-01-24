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
struct gctl_req {int dummy; } ;
struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; } ;
struct g_geom {struct ccd_s* softc; int /*<<< orphan*/  name; int /*<<< orphan*/  provider; } ;
struct g_class {int dummy; } ;
struct ccd_s {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ENXIO ; 
 struct g_provider* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ccd_s*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct g_geom*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(struct gctl_req *req, struct g_class *mp, struct g_geom *gp)
{
	struct g_provider *pp;
	struct ccd_s *sc;

	FUNC2();
	sc = gp->softc;
	pp = FUNC0(&gp->provider);
	if (sc == NULL || pp == NULL)
		return (EBUSY);
	if (pp->acr != 0 || pp->acw != 0 || pp->ace != 0) {
		FUNC4(req, "%s is open(r%dw%de%d)", gp->name,
		    pp->acr, pp->acw, pp->ace);
		return (EBUSY);
	}
	FUNC1(sc);
	gp->softc = NULL;
	FUNC3(gp, ENXIO);
	return (0);
}