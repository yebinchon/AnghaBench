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
struct g_provider {TYPE_1__* geom; } ;
struct g_nop_softc {scalar_t__ sc_wrotebytes; scalar_t__ sc_readbytes; scalar_t__ sc_cmd2s; scalar_t__ sc_cmd1s; scalar_t__ sc_cmd0s; scalar_t__ sc_flushes; scalar_t__ sc_getattrs; scalar_t__ sc_deletes; scalar_t__ sc_writes; scalar_t__ sc_reads; } ;
struct g_class {int dummy; } ;
typedef  int /*<<< orphan*/  param ;
struct TYPE_2__ {struct g_nop_softc* softc; struct g_class* class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 struct g_provider* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char*,...) ; 
 char* FUNC4 (struct gctl_req*,char*) ; 
 int* FUNC5 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct gctl_req *req, struct g_class *mp)
{
	struct g_nop_softc *sc;
	struct g_provider *pp;
	const char *name;
	char param[16];
	int i, *nargs;

	FUNC2();

	nargs = FUNC5(req, "nargs", sizeof(*nargs));
	if (nargs == NULL) {
		FUNC3(req, "No '%s' argument", "nargs");
		return;
	}
	if (*nargs <= 0) {
		FUNC3(req, "Missing device(s).");
		return;
	}

	for (i = 0; i < *nargs; i++) {
		FUNC6(param, sizeof(param), "arg%d", i);
		name = FUNC4(req, param);
		if (name == NULL) {
			FUNC3(req, "No 'arg%d' argument", i);
			return;
		}
		if (FUNC8(name, "/dev/", FUNC7("/dev/")) == 0)
			name += FUNC7("/dev/");
		pp = FUNC1(name);
		if (pp == NULL || pp->geom->class != mp) {
			FUNC0(1, "Provider %s is invalid.", name);
			FUNC3(req, "Provider %s is invalid.", name);
			return;
		}
		sc = pp->geom->softc;
		sc->sc_reads = 0;
		sc->sc_writes = 0;
		sc->sc_deletes = 0;
		sc->sc_getattrs = 0;
		sc->sc_flushes = 0;
		sc->sc_cmd0s = 0;
		sc->sc_cmd1s = 0;
		sc->sc_cmd2s = 0;
		sc->sc_readbytes = 0;
		sc->sc_wrotebytes = 0;
	}
}