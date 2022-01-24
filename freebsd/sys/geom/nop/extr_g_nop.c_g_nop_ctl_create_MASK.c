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
typedef  int u_int ;
struct gctl_req {int dummy; } ;
struct g_provider {int dummy; } ;
struct g_class {int dummy; } ;
typedef  int /*<<< orphan*/  param ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int intmax_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 scalar_t__ FUNC1 (struct gctl_req*,struct g_class*,struct g_provider*,int,int,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 struct g_provider* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*,...) ; 
 char* FUNC5 (struct gctl_req*,char*) ; 
 int* FUNC6 (struct gctl_req*,char*,int) ; 
 int* FUNC7 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct gctl_req *req, struct g_class *mp)
{
	struct g_provider *pp;
	intmax_t *val, error, rfailprob, wfailprob, count_until_fail, offset,
	    secsize, size, stripesize, stripeoffset, delaymsec,
	    rdelayprob, wdelayprob;
	const char *name, *physpath;
	char param[16];
	int i, *nargs;

	FUNC3();

	error = -1;
	rfailprob = -1;
	wfailprob = -1;
	count_until_fail = -1;
	offset = 0;
	secsize = 0;
	size = 0;
	stripesize = 0;
	stripeoffset = 0;
	delaymsec = -1;
	rdelayprob = -1;
	wdelayprob = -1;

	nargs = FUNC6(req, "nargs", sizeof(*nargs));
	if (nargs == NULL) {
		FUNC4(req, "No '%s' argument", "nargs");
		return;
	}
	if (*nargs <= 0) {
		FUNC4(req, "Missing device(s).");
		return;
	}
	val = FUNC7(req, "error", sizeof(*val));
	if (val != NULL) {
		error = *val;
	}
	val = FUNC7(req, "rfailprob", sizeof(*val));
	if (val != NULL) {
		rfailprob = *val;
		if (rfailprob < -1 || rfailprob > 100) {
			FUNC4(req, "Invalid '%s' argument", "rfailprob");
			return;
		}
	}
	val = FUNC7(req, "wfailprob", sizeof(*val));
	if (val != NULL) {
		wfailprob = *val;
		if (wfailprob < -1 || wfailprob > 100) {
			FUNC4(req, "Invalid '%s' argument", "wfailprob");
			return;
		}
	}
	val = FUNC7(req, "delaymsec", sizeof(*val));
	if (val != NULL) {
		delaymsec = *val;
		if (delaymsec < 1 && delaymsec != -1) {
			FUNC4(req, "Invalid '%s' argument", "delaymsec");
			return;
		}
	}
	val = FUNC7(req, "rdelayprob", sizeof(*val));
	if (val != NULL) {
		rdelayprob = *val;
		if (rdelayprob < -1 || rdelayprob > 100) {
			FUNC4(req, "Invalid '%s' argument", "rdelayprob");
			return;
		}
	}
	val = FUNC7(req, "wdelayprob", sizeof(*val));
	if (val != NULL) {
		wdelayprob = *val;
		if (wdelayprob < -1 || wdelayprob > 100) {
			FUNC4(req, "Invalid '%s' argument", "wdelayprob");
			return;
		}
	}
	val = FUNC7(req, "count_until_fail", sizeof(*val));
	if (val != NULL) {
		count_until_fail = *val;
		if (count_until_fail < -1) {
			FUNC4(req, "Invalid '%s' argument",
			    "count_until_fail");
			return;
		}
	}
	val = FUNC7(req, "offset", sizeof(*val));
	if (val != NULL) {
		offset = *val;
		if (offset < 0) {
			FUNC4(req, "Invalid '%s' argument", "offset");
			return;
		}
	}
	val = FUNC7(req, "size", sizeof(*val));
	if (val != NULL) {
		size = *val;
		if (size < 0) {
			FUNC4(req, "Invalid '%s' argument", "size");
			return;
		}
	}
	val = FUNC7(req, "secsize", sizeof(*val));
	if (val != NULL) {
		secsize = *val;
		if (secsize < 0) {
			FUNC4(req, "Invalid '%s' argument", "secsize");
			return;
		}
	}
	val = FUNC7(req, "stripesize", sizeof(*val));
	if (val != NULL) {
		stripesize = *val;
		if (stripesize < 0) {
			FUNC4(req, "Invalid '%s' argument", "stripesize");
			return;
		}
	}
	val = FUNC7(req, "stripeoffset", sizeof(*val));
	if (val != NULL) {
		stripeoffset = *val;
		if (stripeoffset < 0) {
			FUNC4(req, "Invalid '%s' argument",
			    "stripeoffset");
			return;
		}
	}
	physpath = FUNC5(req, "physpath");

	for (i = 0; i < *nargs; i++) {
		FUNC8(param, sizeof(param), "arg%d", i);
		name = FUNC5(req, param);
		if (name == NULL) {
			FUNC4(req, "No 'arg%d' argument", i);
			return;
		}
		if (FUNC10(name, "/dev/", FUNC9("/dev/")) == 0)
			name += FUNC9("/dev/");
		pp = FUNC2(name);
		if (pp == NULL) {
			FUNC0(1, "Provider %s is invalid.", name);
			FUNC4(req, "Provider %s is invalid.", name);
			return;
		}
		if (FUNC1(req, mp, pp,
		    error == -1 ? EIO : (int)error,
		    count_until_fail == -1 ? 0 : (u_int)count_until_fail,
		    rfailprob == -1 ? 0 : (u_int)rfailprob,
		    wfailprob == -1 ? 0 : (u_int)wfailprob,
		    delaymsec == -1 ? 1 : (u_int)delaymsec,
		    rdelayprob == -1 ? 0 : (u_int)rdelayprob,
		    wdelayprob == -1 ? 0 : (u_int)wdelayprob,
		    (off_t)offset, (off_t)size, (u_int)secsize,
		    (off_t)stripesize, (off_t)stripeoffset,
		    physpath) != 0) {
			return;
		}
	}
}