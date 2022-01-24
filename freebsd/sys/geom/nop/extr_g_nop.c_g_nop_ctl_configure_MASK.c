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
typedef  void* u_int ;
struct gctl_req {int dummy; } ;
struct g_provider {TYPE_1__* geom; } ;
struct g_nop_softc {int sc_error; void* sc_count_until_fail; void* sc_delaymsec; void* sc_wdelayprob; void* sc_rdelayprob; void* sc_wfailprob; void* sc_rfailprob; } ;
struct g_class {int dummy; } ;
typedef  int /*<<< orphan*/  param ;
typedef  int intmax_t ;
struct TYPE_2__ {struct g_nop_softc* softc; struct g_class* class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 struct g_provider* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char*,...) ; 
 char* FUNC4 (struct gctl_req*,char*) ; 
 int* FUNC5 (struct gctl_req*,char*,int) ; 
 int* FUNC6 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct gctl_req *req, struct g_class *mp)
{
	struct g_nop_softc *sc;
	struct g_provider *pp;
	intmax_t *val, delaymsec, error, rdelayprob, rfailprob, wdelayprob,
	    wfailprob, count_until_fail;
	const char *name;
	char param[16];
	int i, *nargs;

	FUNC2();

	count_until_fail = -1;
	delaymsec = -1;
	error = -1;
	rdelayprob = -1;
	rfailprob = -1;
	wdelayprob = -1;
	wfailprob = -1;

	nargs = FUNC5(req, "nargs", sizeof(*nargs));
	if (nargs == NULL) {
		FUNC3(req, "No '%s' argument", "nargs");
		return;
	}
	if (*nargs <= 0) {
		FUNC3(req, "Missing device(s).");
		return;
	}
	val = FUNC6(req, "error", sizeof(*val));
	if (val != NULL) {
		error = *val;
	}
	val = FUNC6(req, "count_until_fail", sizeof(*val));
	if (val != NULL) {
		count_until_fail = *val;
	}
	val = FUNC6(req, "rfailprob", sizeof(*val));
	if (val != NULL) {
		rfailprob = *val;
		if (rfailprob < -1 || rfailprob > 100) {
			FUNC3(req, "Invalid '%s' argument", "rfailprob");
			return;
		}
	}
	val = FUNC6(req, "wfailprob", sizeof(*val));
	if (val != NULL) {
		wfailprob = *val;
		if (wfailprob < -1 || wfailprob > 100) {
			FUNC3(req, "Invalid '%s' argument", "wfailprob");
			return;
		}
	}
	val = FUNC6(req, "delaymsec", sizeof(*val));
	if (val != NULL) {
		delaymsec = *val;
		if (delaymsec < 1 && delaymsec != -1) {
			FUNC3(req, "Invalid '%s' argument", "delaymsec");
			return;
		}
	}
	val = FUNC6(req, "rdelayprob", sizeof(*val));
	if (val != NULL) {
		rdelayprob = *val;
		if (rdelayprob < -1 || rdelayprob > 100) {
			FUNC3(req, "Invalid '%s' argument", "rdelayprob");
			return;
		}
	}
	val = FUNC6(req, "wdelayprob", sizeof(*val));
	if (val != NULL) {
		wdelayprob = *val;
		if (wdelayprob < -1 || wdelayprob > 100) {
			FUNC3(req, "Invalid '%s' argument", "wdelayprob");
			return;
		}
	}

	for (i = 0; i < *nargs; i++) {
		FUNC7(param, sizeof(param), "arg%d", i);
		name = FUNC4(req, param);
		if (name == NULL) {
			FUNC3(req, "No 'arg%d' argument", i);
			return;
		}
		if (FUNC9(name, "/dev/", FUNC8("/dev/")) == 0)
			name += FUNC8("/dev/");
		pp = FUNC1(name);
		if (pp == NULL || pp->geom->class != mp) {
			FUNC0(1, "Provider %s is invalid.", name);
			FUNC3(req, "Provider %s is invalid.", name);
			return;
		}
		sc = pp->geom->softc;
		if (error != -1)
			sc->sc_error = (int)error;
		if (rfailprob != -1)
			sc->sc_rfailprob = (u_int)rfailprob;
		if (wfailprob != -1)
			sc->sc_wfailprob = (u_int)wfailprob;
		if (rdelayprob != -1)
			sc->sc_rdelayprob = (u_int)rdelayprob;
		if (wdelayprob != -1)
			sc->sc_wdelayprob = (u_int)wdelayprob;
		if (delaymsec != -1)
			sc->sc_delaymsec = (u_int)delaymsec;
		if (count_until_fail != -1)
			sc->sc_count_until_fail = (u_int)count_until_fail;
	}
}