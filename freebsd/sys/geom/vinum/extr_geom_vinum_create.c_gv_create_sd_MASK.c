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
struct gv_softc {int /*<<< orphan*/  subdisks; } ;
struct gv_sd {int flags; struct gv_softc* vinumconf; TYPE_1__* drive_sc; int /*<<< orphan*/  name; int /*<<< orphan*/  plex; int /*<<< orphan*/  drive; } ;
struct gv_plex {int flags; int /*<<< orphan*/  name; } ;
struct gv_drive {int flags; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int GV_DRIVE_REFERENCED ; 
 int GV_ERR_CREATE ; 
 int GV_PLEX_NEWBORN ; 
 int GV_SD_NEWBORN ; 
 int GV_SD_TASTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct gv_sd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gv_sd*,int /*<<< orphan*/ ) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  from_drive ; 
 int /*<<< orphan*/  FUNC4 (struct gv_sd*) ; 
 struct gv_drive* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gv_softc*,struct gv_drive*) ; 
 struct gv_drive* FUNC7 (struct gv_softc*,int /*<<< orphan*/ ) ; 
 struct gv_plex* FUNC8 (struct gv_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gv_sd*) ; 
 int /*<<< orphan*/  FUNC10 (struct gv_softc*,struct gv_plex*) ; 
 scalar_t__ FUNC11 (struct gv_sd*,struct gv_drive*) ; 
 scalar_t__ FUNC12 (struct gv_sd*,struct gv_plex*) ; 
 int /*<<< orphan*/  sd ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC14(struct gv_softc *sc, struct gv_sd *s)
{
	struct gv_plex *p;
	struct gv_drive *d;

	FUNC1(s != NULL, ("gv_create_sd: NULL s"));

	/* Find the drive where this subdisk should be put on. */
	d = FUNC7(sc, s->drive);
	if (d == NULL) {
		/*
		 * It's possible that the subdisk references a drive that
		 * doesn't exist yet (during the taste process), so create a
		 * practically empty "referenced" drive.
		 */
		if (s->flags & GV_SD_TASTED) {
			d = FUNC5(sizeof(struct gv_drive),
			    M_WAITOK | M_ZERO);
			d->flags |= GV_DRIVE_REFERENCED;
			FUNC13(d->name, s->drive, sizeof(d->name));
			FUNC6(sc, d);
		} else {
			FUNC0(0, "create sd '%s': drive '%s' not found",
			    s->name, s->drive);
			FUNC4(s);
			return (GV_ERR_CREATE);
		}
	}

	/* Find the plex where this subdisk belongs to. */
	p = FUNC8(sc, s->plex);
	if (p == NULL) {
		FUNC0(0, "create sd '%s': plex '%s' not found",
		    s->name, s->plex);
		FUNC4(s);
		return (GV_ERR_CREATE);
	}

	/*
	 * First we give the subdisk to the drive, to handle autosized
	 * values ...
	 */
	if (FUNC11(s, d) != 0) {
		FUNC4(s);
		return (GV_ERR_CREATE);
	}

	/*
	 * Then, we give the subdisk to the plex; we check if the
	 * given values are correct and maybe adjust them.
	 */
	if (FUNC12(s, p) != 0) {
		FUNC0(0, "unable to give sd '%s' to plex '%s'",
		    s->name, p->name);
		if (s->drive_sc && !(s->drive_sc->flags & GV_DRIVE_REFERENCED))
			FUNC3(s, from_drive);
		FUNC9(s);
		FUNC4(s);
		/*
		 * If this subdisk can't be created, we won't create
		 * the attached plex either, if it is also a new one.
		 */
		if (!(p->flags & GV_PLEX_NEWBORN))
			return (GV_ERR_CREATE);
		FUNC10(sc, p);
		return (GV_ERR_CREATE);
	}
	s->flags |= GV_SD_NEWBORN;

	s->vinumconf = sc;
	FUNC2(&sc->subdisks, s, sd);

	return (0);
}