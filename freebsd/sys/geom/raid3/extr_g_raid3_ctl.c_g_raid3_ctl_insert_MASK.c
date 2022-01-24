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
typedef  int /*<<< orphan*/  u_char ;
struct gctl_req {int dummy; } ;
struct g_raid3_softc {size_t sc_ndisks; int sc_sectorsize; int sc_mediasize; int /*<<< orphan*/  sc_lock; struct g_raid3_disk* sc_disks; } ;
struct g_raid3_metadata {int md_provsize; int /*<<< orphan*/  md_provider; scalar_t__ md_dflags; scalar_t__ md_syncid; } ;
struct g_raid3_disk {scalar_t__ d_state; } ;
struct g_provider {size_t name; int sectorsize; int mediasize; } ;
struct g_geom {int /*<<< orphan*/  orphan; } ;
struct g_consumer {scalar_t__ acw; int /*<<< orphan*/ * provider; } ;
struct g_class {int dummy; } ;
typedef  int off_t ;
typedef  size_t intmax_t ;

/* Variables and functions */
 scalar_t__ G_RAID3_DISK_STATE_NODISK ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct g_consumer*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct g_consumer*,struct g_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct g_consumer* FUNC8 (struct g_geom*) ; 
 struct g_geom* FUNC9 (struct g_class*,char*) ; 
 struct g_provider* FUNC10 (char const*) ; 
 int /*<<< orphan*/  g_raid3_ctl_insert_orphan ; 
 int /*<<< orphan*/  FUNC11 (struct g_raid3_disk*,struct g_raid3_metadata*) ; 
 struct g_raid3_softc* FUNC12 (struct g_class*,char const*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (struct g_consumer*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (struct gctl_req*,char*,...) ; 
 char* FUNC17 (struct gctl_req*,char*) ; 
 int /*<<< orphan*/ * FUNC18 (struct gctl_req*,char*,int /*<<< orphan*/ *) ; 
 void* FUNC19 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct g_raid3_metadata*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,size_t,int) ; 
 scalar_t__ FUNC22 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC24(struct gctl_req *req, struct g_class *mp)
{
	struct g_raid3_metadata md;
	struct g_raid3_softc *sc;
	struct g_raid3_disk *disk;
	struct g_geom *gp;
	struct g_provider *pp;
	struct g_consumer *cp;
	const char *name;
	u_char *sector;
	off_t compsize;
	intmax_t *no;
	int *hardcode, *nargs, error, autono;

	nargs = FUNC19(req, "nargs", sizeof(*nargs));
	if (nargs == NULL) {
		FUNC16(req, "No '%s' argument.", "nargs");
		return;
	}
	if (*nargs != 2) {
		FUNC16(req, "Invalid number of arguments.");
		return;
	}
	hardcode = FUNC19(req, "hardcode", sizeof(*hardcode));
	if (hardcode == NULL) {
		FUNC16(req, "No '%s' argument.", "hardcode");
		return;
	}
	name = FUNC17(req, "arg1");
	if (name == NULL) {
		FUNC16(req, "No 'arg%u' argument.", 1);
		return;
	}
	if (FUNC18(req, "number", NULL) != NULL)
		no = FUNC19(req, "number", sizeof(*no));
	else
		no = NULL;
	if (FUNC22(name, "/dev/", 5) == 0)
		name += 5;
	FUNC13();
	pp = FUNC10(name);
	if (pp == NULL) {
		FUNC14();
		FUNC16(req, "Invalid provider.");
		return;
	}
	gp = FUNC9(mp, "raid3:insert");
	gp->orphan = g_raid3_ctl_insert_orphan;
	cp = FUNC8(gp);
	error = FUNC2(cp, pp);
	if (error != 0) {
		FUNC14();
		FUNC16(req, "Cannot attach to %s.", pp->name);
		goto end;
	}
	error = FUNC1(cp, 0, 1, 1);
	if (error != 0) {
		FUNC14();
		FUNC16(req, "Cannot access %s.", pp->name);
		goto end;
	}
	FUNC14();
	name = FUNC17(req, "arg0");
	if (name == NULL) {
		FUNC16(req, "No 'arg%u' argument.", 0);
		goto end;
	}
	sc = FUNC12(mp, name);
	if (sc == NULL) {
		FUNC16(req, "No such device: %s.", name);
		goto end;
	}
	if (no != NULL) {
		if (*no < 0 || *no >= sc->sc_ndisks) {
			FUNC23(&sc->sc_lock);
			FUNC16(req, "Invalid component number.");
			goto end;
		}
		disk = &sc->sc_disks[*no];
		if (disk->d_state != G_RAID3_DISK_STATE_NODISK) {
			FUNC23(&sc->sc_lock);
			FUNC16(req, "Component %jd is already connected.",
			    *no);
			goto end;
		}
	} else {
		disk = NULL;
		for (autono = 0; autono < sc->sc_ndisks && disk == NULL; autono++)
			if (sc->sc_disks[autono].d_state ==
			    G_RAID3_DISK_STATE_NODISK)
				disk = &sc->sc_disks[autono];
		if (disk == NULL) {
			FUNC23(&sc->sc_lock);
			FUNC16(req, "No disconnected components.");
			goto end;
		}
	}
	if (((sc->sc_sectorsize / (sc->sc_ndisks - 1)) % pp->sectorsize) != 0) {
		FUNC23(&sc->sc_lock);
		FUNC16(req,
		    "Cannot insert provider %s, because of its sector size.",
		    pp->name);
		goto end;
	}
	compsize = sc->sc_mediasize / (sc->sc_ndisks - 1);
	if (compsize > pp->mediasize - pp->sectorsize) {
		FUNC23(&sc->sc_lock);
		FUNC16(req, "Provider %s too small.", pp->name);
		goto end;
	}
	if (compsize < pp->mediasize - pp->sectorsize) {
		FUNC16(req,
		    "warning: %s: only %jd bytes from %jd bytes used.",
		    pp->name, (intmax_t)compsize,
		    (intmax_t)(pp->mediasize - pp->sectorsize));
	}
	FUNC11(disk, &md);
	FUNC23(&sc->sc_lock);
	md.md_syncid = 0;
	md.md_dflags = 0;
	if (*hardcode)
		FUNC21(md.md_provider, pp->name, sizeof(md.md_provider));
	else
		FUNC0(md.md_provider, sizeof(md.md_provider));
	md.md_provsize = pp->mediasize;
	sector = FUNC7(pp->sectorsize, M_WAITOK);
	FUNC20(&md, sector);
	error = FUNC15(cp, pp->mediasize - pp->sectorsize, sector,
	    pp->sectorsize);
	FUNC6(sector);
	if (error != 0)
		FUNC16(req, "Cannot store metadata on %s.", pp->name);
end:
	FUNC13();
	if (cp->acw > 0)
		FUNC1(cp, 0, -1, -1);
	if (cp->provider != NULL)
		FUNC5(cp);
	FUNC3(cp);
	FUNC4(gp);
	FUNC14();
}