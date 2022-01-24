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
struct sbuf {int dummy; } ;
struct gctl_req {int dummy; } ;
struct g_provider {scalar_t__ mediasize; unsigned int sectorsize; char const* name; } ;
struct g_mirror_softc {int sc_flags; int /*<<< orphan*/  sc_lock; } ;
struct g_mirror_metadata {char const* md_magic; char const* md_name; int md_all; int md_syncid; int md_balance; int md_mediasize; unsigned int md_sectorsize; unsigned int md_priority; void* md_did; scalar_t__ md_provsize; int /*<<< orphan*/  md_provider; int /*<<< orphan*/  md_mflags; scalar_t__ md_dflags; int /*<<< orphan*/  md_slice; scalar_t__ md_sync_offset; scalar_t__ md_genid; void* md_mid; int /*<<< orphan*/  md_version; } ;
struct g_geom {char const* name; struct g_mirror_softc* softc; int /*<<< orphan*/  orphan; } ;
struct g_consumer {int dummy; } ;
struct g_class {int dummy; } ;
typedef  int /*<<< orphan*/  param ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  G_MIRROR_DESTROY_HARD ; 
 int G_MIRROR_DEVICE_FLAG_DESTROY ; 
 int /*<<< orphan*/  G_MIRROR_DEVICE_FLAG_NOAUTOSYNC ; 
 int /*<<< orphan*/  G_MIRROR_DEVICE_FLAG_NOFAILSYNC ; 
 int G_MIRROR_DEVICE_FLAG_TASTING ; 
 char const* G_MIRROR_MAGIC ; 
 int /*<<< orphan*/  G_MIRROR_TYPE_MANUAL ; 
 int /*<<< orphan*/  G_MIRROR_VERSION ; 
 scalar_t__ OFF_MAX ; 
 void* FUNC1 () ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct g_consumer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct g_consumer*,struct g_provider*) ; 
 int /*<<< orphan*/  FUNC6 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC7 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC8 (struct g_consumer*) ; 
 scalar_t__ FUNC9 (struct g_mirror_softc*,struct g_provider*,struct g_mirror_metadata*) ; 
 struct g_geom* FUNC10 (struct g_class*,struct g_mirror_metadata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_mirror_create_orphan ; 
 int /*<<< orphan*/  FUNC11 (struct g_mirror_softc*,int /*<<< orphan*/ ) ; 
 struct g_consumer* FUNC12 (struct g_geom*) ; 
 struct g_geom* FUNC13 (struct g_class*,char*,char const*) ; 
 struct g_provider* FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct gctl_req*,char*,...) ; 
 char* FUNC18 (struct gctl_req*,char*) ; 
 void* FUNC19 (struct gctl_req*,char*,int) ; 
 char const* FUNC20 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC21 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC22 (struct sbuf*) ; 
 struct sbuf* FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (struct sbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC25 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC26 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 scalar_t__ FUNC28 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC31(struct gctl_req *req, struct g_class *mp)
{
	struct g_mirror_metadata md;
	struct g_geom *gp;
	struct g_consumer *cp;
	struct g_provider *pp;
	struct g_mirror_softc *sc;
	struct sbuf *sb;
	const char *name;
	char param[16];
	int *nargs;
	intmax_t *val;
	int *ival;
	const char *sval;
	int bal;
	unsigned attached, no, sectorsize;
	off_t mediasize;

	nargs = FUNC19(req, "nargs", sizeof(*nargs));
	if (nargs == NULL) {
		FUNC17(req, "No '%s' argument.", "nargs");
		return;
	}
	if (*nargs <= 2) {
		FUNC17(req, "Too few arguments.");
		return;
	}

	FUNC26(md.md_magic, G_MIRROR_MAGIC, sizeof(md.md_magic));
	md.md_version = G_MIRROR_VERSION;
	name = FUNC18(req, "arg0");
	if (name == NULL) {
		FUNC17(req, "No 'arg%u' argument.", 0);
		return;
	}
	FUNC26(md.md_name, name, sizeof(md.md_name));
	md.md_mid = FUNC1();
	md.md_all = *nargs - 1;
	md.md_genid = 0;
	md.md_syncid = 1;
	md.md_sync_offset = 0;
	val = FUNC19(req, "slice", sizeof(*val));
	if (val == NULL) {
		FUNC17(req, "No slice argument.");
		return;
	}
	md.md_slice = *val;
	sval = FUNC18(req, "balance");
	if (sval == NULL) {
		FUNC17(req, "No balance argument.");
		return;
	}
	bal = FUNC2(sval);
	if (bal < 0) {
		FUNC17(req, "Invalid balance algorithm.");
		return;
	}
	md.md_balance = bal;
	md.md_mflags = 0;
	md.md_dflags = 0;
	ival = FUNC19(req, "noautosync", sizeof(*ival));
	if (ival != NULL && *ival)
		md.md_mflags |= G_MIRROR_DEVICE_FLAG_NOAUTOSYNC;
	ival = FUNC19(req, "nofailsync", sizeof(*ival));
	if (ival != NULL && *ival)
		md.md_mflags |= G_MIRROR_DEVICE_FLAG_NOFAILSYNC;
	/* These fields not used in manual mode. */
	FUNC3(md.md_provider, sizeof(md.md_provider));
	md.md_provsize = 0;

	FUNC15();
	mediasize = OFF_MAX;
	sectorsize = 0;
	gp = FUNC13(mp, "%s", md.md_name);
	gp->orphan = g_mirror_create_orphan;
	cp = FUNC12(gp);
	for (no = 1; no < *nargs; no++) {
		FUNC25(param, sizeof(param), "arg%u", no);
		name = FUNC18(req, param);
		if (name == NULL) {
			FUNC17(req, "No 'arg%u' argument.", no);
err:
			FUNC6(cp);
			FUNC7(gp);
			FUNC16();
			return;
		}
		if (FUNC28(name, "/dev/", FUNC27("/dev/")) == 0)
			name += FUNC27("/dev/");
		pp = FUNC14(name);
		if (pp == NULL) {
			FUNC0(1, "Disk %s is invalid.", name);
			FUNC17(req, "Disk %s is invalid.", name);
			goto err;
		}
		FUNC5(cp, pp);
		if (FUNC4(cp, 1, 0, 0) != 0) {
			FUNC0(1, "Can't open disk %s.", name);
			FUNC17(req, "Can't open disk %s.", name);
err2:
			FUNC8(cp);
			goto err;
		}
		if (pp->mediasize == 0 || pp->sectorsize == 0) {
			FUNC0(1, "Disk %s has no media.", name);
			FUNC17(req, "Disk %s has no media.", name);
			FUNC4(cp, -1, 0, 0);
			goto err2;
		}
		if (pp->mediasize < mediasize)
			mediasize = pp->mediasize;
		if (pp->sectorsize > sectorsize)
			sectorsize = pp->sectorsize;
		FUNC4(cp, -1, 0, 0);
		FUNC8(cp);
	}
	FUNC6(cp);
	FUNC7(gp);
	md.md_mediasize = mediasize;
	md.md_sectorsize = sectorsize;
	md.md_mediasize -= (md.md_mediasize % md.md_sectorsize);

	gp = FUNC10(mp, &md, G_MIRROR_TYPE_MANUAL);
	if (gp == NULL) {
		FUNC17(req, "Can't create %s.", md.md_name);
		FUNC16();
		return;
	}

	sc = gp->softc;
	FUNC16();
	FUNC29(&sc->sc_lock);
	sc->sc_flags |= G_MIRROR_DEVICE_FLAG_TASTING;
	sb = FUNC23();
	FUNC24(sb, "Can't attach disk(s) to %s:", gp->name);
	for (attached = 0, no = 1; no < *nargs; no++) {
		FUNC25(param, sizeof(param), "arg%u", no);
		name = FUNC18(req, param);
		if (FUNC28(name, "/dev/", FUNC27("/dev/")) == 0)
			name += FUNC27("/dev/");
		pp = FUNC14(name);
		if (pp == NULL) {
			FUNC0(1, "Provider %s disappear?!", name);
			FUNC24(sb, " %s", name);
			continue;
		}
		md.md_did = FUNC1();
		md.md_priority = no - 1;
		if (FUNC9(sc, pp, &md) != 0) {
			FUNC0(1, "Disk %u (%s) not attached to %s.",
			    no, pp->name, gp->name);
			FUNC24(sb, " %s", pp->name);
			continue;
		}
		attached++;
	}
	FUNC22(sb);
	sc->sc_flags &= ~G_MIRROR_DEVICE_FLAG_TASTING;
	if (md.md_all != attached ||
	    (sc->sc_flags & G_MIRROR_DEVICE_FLAG_DESTROY) != 0) {
		FUNC11(gp->softc, G_MIRROR_DESTROY_HARD);
		FUNC17(req, "%s", FUNC20(sb));
	} else
		FUNC30(&sc->sc_lock);
	FUNC21(sb);
}