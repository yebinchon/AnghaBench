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
struct g_raid_softc {char* sc_name; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_md; } ;
struct g_geom {scalar_t__ softc; } ;
struct g_class {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct gctl_req*) ; 
 int G_RAID_MD_TASTE_FAIL ; 
 int G_RAID_MD_TASTE_NEW ; 
 int FUNC1 (char const*,struct gctl_req*,struct g_geom**) ; 
 int /*<<< orphan*/  FUNC2 (struct g_raid_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct gctl_req*,char*,...) ; 
 char* FUNC6 (struct gctl_req*,char*) ; 
 int* FUNC7 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gctl_req*,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(struct gctl_req *req, struct g_class *mp)
{
	struct g_geom *geom;
	struct g_raid_softc *sc;
	const char *format;
	int *nargs;
	int crstatus, ctlstatus;
	char buf[64];

	nargs = FUNC7(req, "nargs", sizeof(*nargs));
	if (nargs == NULL) {
		FUNC5(req, "No '%s' argument.", "nargs");
		return;
	}
	if (*nargs < 4) {
		FUNC5(req, "Invalid number of arguments.");
		return;
	}
	format = FUNC6(req, "arg0");
	if (format == NULL) {
		FUNC5(req, "No format received.");
		return;
	}
	crstatus = FUNC1(format, req, &geom);
	if (crstatus == G_RAID_MD_TASTE_FAIL) {
		FUNC5(req, "Failed to create array with format '%s'.",
		    format);
		return;
	}
	sc = (struct g_raid_softc *)geom->softc;
	FUNC4();
	FUNC11(&sc->sc_lock);
	ctlstatus = FUNC0(sc->sc_md, req);
	if (ctlstatus < 0) {
		FUNC5(req, "Command failed: %d.", ctlstatus);
		if (crstatus == G_RAID_MD_TASTE_NEW)
			FUNC2(sc, 0);
	} else {
		if (crstatus == G_RAID_MD_TASTE_NEW)
			FUNC9(buf, sizeof(buf), "%s created\n", sc->sc_name);
		else
			FUNC9(buf, sizeof(buf), "%s reused\n", sc->sc_name);
		FUNC8(req, "output", buf, FUNC10(buf) + 1);
	}
	FUNC12(&sc->sc_lock);
	FUNC3();
}