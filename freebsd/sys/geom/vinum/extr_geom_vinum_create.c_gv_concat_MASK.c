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
struct gv_volume {char* name; int plexcount; char* volume; char* plex; char* drive; int plex_offset; int drive_offset; int size; scalar_t__ stripesize; int /*<<< orphan*/  org; int /*<<< orphan*/  state; } ;
struct gv_softc {char* name; int plexcount; char* volume; char* plex; char* drive; int plex_offset; int drive_offset; int size; scalar_t__ stripesize; int /*<<< orphan*/  org; int /*<<< orphan*/  state; } ;
struct gv_sd {char* name; int plexcount; char* volume; char* plex; char* drive; int plex_offset; int drive_offset; int size; scalar_t__ stripesize; int /*<<< orphan*/  org; int /*<<< orphan*/  state; } ;
struct gv_plex {char* name; int plexcount; char* volume; char* plex; char* drive; int plex_offset; int drive_offset; int size; scalar_t__ stripesize; int /*<<< orphan*/  org; int /*<<< orphan*/  state; } ;
struct gv_drive {int dummy; } ;
struct gctl_req {int dummy; } ;
struct g_geom {struct gv_volume* softc; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  GV_EVENT_CREATE_PLEX ; 
 int /*<<< orphan*/  GV_EVENT_CREATE_SD ; 
 int /*<<< orphan*/  GV_EVENT_CREATE_VOLUME ; 
 int /*<<< orphan*/  GV_EVENT_SAVE_CONFIG ; 
 int /*<<< orphan*/  GV_EVENT_SETUP_OBJECTS ; 
 int /*<<< orphan*/  GV_PLEX_CONCAT ; 
 int /*<<< orphan*/  GV_VOL_UP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct gv_volume* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,char*,...) ; 
 char* FUNC2 (struct gctl_req*,char*,int /*<<< orphan*/ *) ; 
 int* FUNC3 (struct gctl_req*,char*,int) ; 
 struct gv_drive* FUNC4 (struct gv_volume*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct gv_volume*,int /*<<< orphan*/ ,struct gv_volume*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

void
FUNC8(struct g_geom *gp, struct gctl_req *req)
{
	struct gv_drive *d;
	struct gv_sd *s;
	struct gv_volume *v;
	struct gv_plex *p;
	struct gv_softc *sc;
	char *drive, buf[30], *vol;
	int *drives, dcount;

	sc = gp->softc;
	dcount = 0;
	vol = FUNC2(req, "name", NULL);
	if (vol == NULL) {
		FUNC1(req, "volume name not given");	
		return;
	}

	drives = FUNC3(req, "drives", sizeof(*drives));

	if (drives == NULL) { 
		FUNC1(req, "drive names not given");
		return;
	}

	/* First we create the volume. */
	v = FUNC0(sizeof(*v), M_WAITOK | M_ZERO);
	FUNC7(v->name, vol, sizeof(v->name));
	v->state = GV_VOL_UP;
	FUNC5(sc, GV_EVENT_CREATE_VOLUME, v, NULL, 0, 0);

	/* Then we create the plex. */
	p = FUNC0(sizeof(*p), M_WAITOK | M_ZERO);
	FUNC6(p->name, sizeof(p->name), "%s.p%d", v->name, v->plexcount);
	FUNC7(p->volume, v->name, sizeof(p->volume));
	p->org = GV_PLEX_CONCAT;
	p->stripesize = 0;
	FUNC5(sc, GV_EVENT_CREATE_PLEX, p, NULL, 0, 0);

	/* Drives are first (right now) priority */
	for (dcount = 0; dcount < *drives; dcount++) {
		FUNC6(buf, sizeof(buf), "drive%d", dcount);
		drive = FUNC2(req, buf, NULL);
		d = FUNC4(sc, drive);
		if (d == NULL) {
			FUNC1(req, "No such drive '%s'", drive);
			continue;
		}
		s = FUNC0(sizeof(*s), M_WAITOK | M_ZERO);
		FUNC6(s->name, sizeof(s->name), "%s.s%d", p->name, dcount);
		FUNC7(s->plex, p->name, sizeof(s->plex));
		FUNC7(s->drive, drive, sizeof(s->drive));
		s->plex_offset = -1;
		s->drive_offset = -1;
		s->size = -1;
		FUNC5(sc, GV_EVENT_CREATE_SD, s, NULL, 0, 0);
	}
	FUNC5(sc, GV_EVENT_SETUP_OBJECTS, sc, NULL, 0, 0);
	FUNC5(sc, GV_EVENT_SAVE_CONFIG, sc, NULL, 0, 0);
}