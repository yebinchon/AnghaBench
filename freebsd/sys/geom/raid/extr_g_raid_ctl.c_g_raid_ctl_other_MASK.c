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
struct g_raid_softc {int /*<<< orphan*/  sc_lock; int /*<<< orphan*/ * sc_md; } ;
struct g_class {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct gctl_req*) ; 
 struct g_raid_softc* FUNC1 (struct g_class*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*,...) ; 
 char* FUNC5 (struct gctl_req*,char*) ; 
 int* FUNC6 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct gctl_req *req, struct g_class *mp)
{
	struct g_raid_softc *sc;
	const char *nodename;
	int *nargs;
	int ctlstatus;

	nargs = FUNC6(req, "nargs", sizeof(*nargs));
	if (nargs == NULL) {
		FUNC4(req, "No '%s' argument.", "nargs");
		return;
	}
	if (*nargs < 1) {
		FUNC4(req, "Invalid number of arguments.");
		return;
	}
	nodename = FUNC5(req, "arg0");
	if (nodename == NULL) {
		FUNC4(req, "No array name received.");
		return;
	}
	sc = FUNC1(mp, nodename);
	if (sc == NULL) {
		FUNC4(req, "Array '%s' not found.", nodename);
		return;
	}
	FUNC3();
	FUNC7(&sc->sc_lock);
	if (sc->sc_md != NULL) {
		ctlstatus = FUNC0(sc->sc_md, req);
		if (ctlstatus < 0)
			FUNC4(req, "Command failed: %d.", ctlstatus);
	}
	FUNC8(&sc->sc_lock);
	FUNC2();
}