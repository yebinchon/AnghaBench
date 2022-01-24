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
struct sbuf {int dummy; } ;
struct gctl_req {int dummy; } ;
struct g_provider {int /*<<< orphan*/  name; } ;
struct g_geom {struct g_concat_softc* softc; int /*<<< orphan*/  name; } ;
struct g_concat_softc {int dummy; } ;
struct g_concat_metadata {int md_magic; int md_name; int md_all; scalar_t__ md_provsize; int /*<<< orphan*/  md_provider; scalar_t__ md_no; int /*<<< orphan*/  md_id; int /*<<< orphan*/  md_version; } ;
struct g_class {int dummy; } ;
typedef  int /*<<< orphan*/  param ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 char const* G_CONCAT_MAGIC ; 
 int /*<<< orphan*/  G_CONCAT_TYPE_MANUAL ; 
 int /*<<< orphan*/  G_CONCAT_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct g_concat_softc*,struct g_provider*,int) ; 
 struct g_geom* FUNC5 (struct g_class*,struct g_concat_metadata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct g_concat_softc*,int) ; 
 struct g_provider* FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct gctl_req*,char*,...) ; 
 char* FUNC10 (struct gctl_req*,char*) ; 
 int* FUNC11 (struct gctl_req*,char*,int) ; 
 int FUNC12 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct sbuf*) ; 
 struct sbuf* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct sbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int,char const*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 scalar_t__ FUNC20 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC21(struct gctl_req *req, struct g_class *mp)
{
	u_int attached, no;
	struct g_concat_metadata md;
	struct g_provider *pp;
	struct g_concat_softc *sc;
	struct g_geom *gp;
	struct sbuf *sb;
	const char *name;
	char param[16];
	int *nargs;

	FUNC8();
	nargs = FUNC11(req, "nargs", sizeof(*nargs));
	if (nargs == NULL) {
		FUNC9(req, "No '%s' argument.", "nargs");
		return;
	}
	if (*nargs < 2) {
		FUNC9(req, "Too few arguments.");
		return;
	}

	FUNC18(md.md_magic, G_CONCAT_MAGIC, sizeof(md.md_magic));
	md.md_version = G_CONCAT_VERSION;
	name = FUNC10(req, "arg0");
	if (name == NULL) {
		FUNC9(req, "No 'arg%u' argument.", 0);
		return;
	}
	FUNC18(md.md_name, name, sizeof(md.md_name));
	md.md_id = FUNC2();
	md.md_no = 0;
	md.md_all = *nargs - 1;
	FUNC3(md.md_provider, sizeof(md.md_provider));
	/* This field is not important here. */
	md.md_provsize = 0;

	/* Check all providers are valid */
	for (no = 1; no < *nargs; no++) {
		FUNC17(param, sizeof(param), "arg%u", no);
		name = FUNC10(req, param);
		if (name == NULL) {
			FUNC9(req, "No 'arg%u' argument.", no);
			return;
		}
		if (FUNC20(name, "/dev/", FUNC19("/dev/")) == 0)
			name += FUNC19("/dev/");
		pp = FUNC7(name);
		if (pp == NULL) {
			FUNC0(1, "Disk %s is invalid.", name);
			FUNC9(req, "Disk %s is invalid.", name);
			return;
		}
	}

	gp = FUNC5(mp, &md, G_CONCAT_TYPE_MANUAL);
	if (gp == NULL) {
		FUNC9(req, "Can't configure %s.", md.md_name);
		return;
	}

	sc = gp->softc;
	sb = FUNC15();
	FUNC16(sb, "Can't attach disk(s) to %s:", gp->name);
	for (attached = 0, no = 1; no < *nargs; no++) {
		FUNC17(param, sizeof(param), "arg%u", no);
		name = FUNC10(req, param);
		if (name == NULL) {
			FUNC9(req, "No 'arg%d' argument.", no);
			return;
		}
		if (FUNC20(name, "/dev/", FUNC19("/dev/")) == 0)
			name += FUNC19("/dev/");
		pp = FUNC7(name);
		FUNC1(pp != NULL, ("Provider %s disappear?!", name));
		if (FUNC4(sc, pp, no - 1) != 0) {
			FUNC0(1, "Disk %u (%s) not attached to %s.",
			    no, pp->name, gp->name);
			FUNC16(sb, " %s", pp->name);
			continue;
		}
		attached++;
	}
	FUNC14(sb);
	if (md.md_all != attached) {
		FUNC6(gp->softc, 1);
		FUNC9(req, "%s", FUNC12(sb));
	}
	FUNC13(sb);
}