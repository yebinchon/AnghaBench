#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gctl_req {int dummy; } ;
struct g_virstor_softc {TYPE_1__* geom; } ;
struct g_class {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  LVL_ERROR ; 
 int /*<<< orphan*/  LVL_INFO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char*,...) ; 
 char* FUNC4 (struct gctl_req*,char*) ; 
 int* FUNC5 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct g_virstor_softc*) ; 
 struct g_virstor_softc* FUNC8 (struct g_class*,char const*) ; 
 int FUNC9 (struct g_virstor_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct gctl_req *req, struct g_class *cp)
{
	int *force, *nargs;
	int i;

	nargs = FUNC5(req, "nargs", sizeof *nargs);
	if (nargs == NULL) {
		FUNC3(req, "Error fetching argument '%s'", "nargs");
		return;
	}
	if (*nargs < 1) {
		FUNC3(req, "Invalid number of arguments");
		return;
	}
	force = FUNC5(req, "force", sizeof *force);
	if (force == NULL) {
		FUNC3(req, "Error fetching argument '%s'", "force");
		return;
	}

	FUNC1();
	for (i = 0; i < *nargs; i++) {
		char param[8];
		const char *name;
		struct g_virstor_softc *sc;
		int error;

		FUNC6(param, "arg%d", i);
		name = FUNC4(req, param);
		if (name == NULL) {
			FUNC3(req, "No 'arg%d' argument", i);
			FUNC2();
			return;
		}
		sc = FUNC8(cp, name);
		if (sc == NULL) {
			FUNC3(req, "Don't know anything about '%s'", name);
			FUNC2();
			return;
		}

		FUNC0(LVL_INFO, "Stopping %s by the userland command",
		    sc->geom->name);
		FUNC7(sc);
		if ((error = FUNC9(sc, TRUE, TRUE)) != 0) {
			FUNC0(LVL_ERROR, "Cannot destroy %s: %d",
			    sc->geom->name, error);
		}
	}
	FUNC2();
}