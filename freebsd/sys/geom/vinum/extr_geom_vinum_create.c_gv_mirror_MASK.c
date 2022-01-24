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
struct gv_volume {char* name; char* volume; int stripesize; char* plex; char* drive; int plex_offset; int drive_offset; int size; int /*<<< orphan*/  org; int /*<<< orphan*/  state; } ;
struct gv_softc {char* name; char* volume; int stripesize; char* plex; char* drive; int plex_offset; int drive_offset; int size; int /*<<< orphan*/  org; int /*<<< orphan*/  state; } ;
struct gv_sd {char* name; char* volume; int stripesize; char* plex; char* drive; int plex_offset; int drive_offset; int size; int /*<<< orphan*/  org; int /*<<< orphan*/  state; } ;
struct gv_plex {char* name; char* volume; int stripesize; char* plex; char* drive; int plex_offset; int drive_offset; int size; int /*<<< orphan*/  org; int /*<<< orphan*/  state; } ;
struct gv_drive {int dummy; } ;
struct gctl_req {int dummy; } ;
struct g_geom {struct gv_volume* softc; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int DEFAULT_STRIPESIZE ; 
 int /*<<< orphan*/  GV_EVENT_CREATE_PLEX ; 
 int /*<<< orphan*/  GV_EVENT_CREATE_SD ; 
 int /*<<< orphan*/  GV_EVENT_CREATE_VOLUME ; 
 int /*<<< orphan*/  GV_EVENT_SAVE_CONFIG ; 
 int /*<<< orphan*/  GV_EVENT_SETUP_OBJECTS ; 
 int GV_FLAG_S ; 
 int /*<<< orphan*/  GV_PLEX_CONCAT ; 
 int /*<<< orphan*/  GV_PLEX_STRIPED ; 
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
	int *drives, *flags, dcount, pcount, scount;

	sc = gp->softc;
	dcount = 0;
	scount = 0;
	pcount = 0;
	vol = FUNC2(req, "name", NULL);
	if (vol == NULL) {
		FUNC1(req, "volume name not given");	
		return;
	}

	flags = FUNC3(req, "flags", sizeof(*flags));
	drives = FUNC3(req, "drives", sizeof(*drives));

	if (drives == NULL) { 
		FUNC1(req, "drive names not given");
		return;
	}

	/* We must have an even number of drives. */
	if (*drives % 2 != 0) {
		FUNC1(req, "mirror organization must have an even number "
		    "of drives");
		return;
	}
	if (*flags & GV_FLAG_S && *drives < 4) {
		FUNC1(req, "must have at least 4 drives for striped plex");
		return;
	}

	/* First we create the volume. */
	v = FUNC0(sizeof(*v), M_WAITOK | M_ZERO);
	FUNC7(v->name, vol, sizeof(v->name));
	v->state = GV_VOL_UP;
	FUNC5(sc, GV_EVENT_CREATE_VOLUME, v, NULL, 0, 0);

	/* Then we create the plexes. */
	for (pcount = 0; pcount < 2; pcount++) {
		p = FUNC0(sizeof(*p), M_WAITOK | M_ZERO);
		FUNC6(p->name, sizeof(p->name), "%s.p%d", v->name,
		    pcount);
		FUNC7(p->volume, v->name, sizeof(p->volume));
		if (*flags & GV_FLAG_S) {
			p->org = GV_PLEX_STRIPED;
			p->stripesize = DEFAULT_STRIPESIZE;
		} else {
			p->org = GV_PLEX_CONCAT;
			p->stripesize = -1;
		}
		FUNC5(sc, GV_EVENT_CREATE_PLEX, p, NULL, 0, 0);

		/*
		 * We just gives each even drive to plex one, and each odd to
		 * plex two.
		 */
		scount = 0;
		for (dcount = pcount; dcount < *drives; dcount += 2) {
			FUNC6(buf, sizeof(buf), "drive%d", dcount);
			drive = FUNC2(req, buf, NULL);
			d = FUNC4(sc, drive);
			if (d == NULL) {
				FUNC1(req, "No such drive '%s', aborting",
				    drive);
				scount++;
				break;
			}
			s = FUNC0(sizeof(*s), M_WAITOK | M_ZERO);
			FUNC6(s->name, sizeof(s->name), "%s.s%d", p->name,
			    scount);
			FUNC7(s->plex, p->name, sizeof(s->plex));
			FUNC7(s->drive, drive, sizeof(s->drive));
			s->plex_offset = -1;
			s->drive_offset = -1;
			s->size = -1;
			FUNC5(sc, GV_EVENT_CREATE_SD, s, NULL, 0, 0);
			scount++;
		}
	}
	FUNC5(sc, GV_EVENT_SETUP_OBJECTS, sc, NULL, 0, 0);
	FUNC5(sc, GV_EVENT_SAVE_CONFIG, sc, NULL, 0, 0);
}