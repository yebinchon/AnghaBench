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
typedef  int /*<<< orphan*/  uint8_t ;
struct gctl_req {int dummy; } ;
struct g_provider {char const* name; scalar_t__ sectorsize; scalar_t__ mediasize; } ;
struct g_multipath_softc {scalar_t__* sc_uuid; struct g_consumer* sc_active; } ;
struct g_geom {struct g_multipath_softc* softc; } ;
struct g_consumer {struct g_provider* provider; } ;
struct g_class {int dummy; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC0 (struct g_consumer*,int,int,int) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int) ; 
 int FUNC2 (struct g_geom*) ; 
 struct g_geom* FUNC3 (struct g_class*,char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct g_consumer*,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct gctl_req*,char*,...) ; 
 char* FUNC9 (struct gctl_req*,char*) ; 

__attribute__((used)) static void
FUNC10(struct gctl_req *req, struct g_class *mp)
{
	struct g_geom *gp;
	struct g_multipath_softc *sc;
	struct g_consumer *cp;
	struct g_provider *pp;
	const char *name;
	uint8_t *buf;
	int error;

	FUNC4();

	name = FUNC9(req, "arg0");
        if (name == NULL) {
                FUNC8(req, "No 'arg0' argument");
                return;
        }
	gp = FUNC3(mp, name);
	if (gp == NULL) {
		FUNC8(req, "Device %s is invalid", name);
		return;
	}
	sc = gp->softc;

	if (sc->sc_uuid[0] != 0 && sc->sc_active != NULL) {
		cp = sc->sc_active;
		pp = cp->provider;
		error = FUNC0(cp, 1, 1, 1);
		if (error != 0) {
			FUNC8(req, "Can't open %s (%d)", pp->name, error);
			goto destroy;
		}
		FUNC6();
		buf = FUNC1(pp->sectorsize, M_WAITOK | M_ZERO);
		error = FUNC7(cp, pp->mediasize - pp->sectorsize,
		    buf, pp->sectorsize);
		FUNC5();
		FUNC0(cp, -1, -1, -1);
		if (error != 0)
			FUNC8(req, "Can't erase metadata on %s (%d)",
			    pp->name, error);
	}

destroy:
	error = FUNC2(gp);
	if (error != 0 && error != EINPROGRESS)
		FUNC8(req, "failed to destroy %s (err=%d)", name, error);
}