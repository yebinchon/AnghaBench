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
struct gv_volume {int /*<<< orphan*/  name; int /*<<< orphan*/  device; } ;
struct gv_softc {int /*<<< orphan*/  name; int /*<<< orphan*/  device; } ;
struct gv_sd {int /*<<< orphan*/  name; int /*<<< orphan*/  device; } ;
struct gv_plex {int /*<<< orphan*/  name; int /*<<< orphan*/  device; } ;
struct gv_drive {int /*<<< orphan*/  name; int /*<<< orphan*/  device; } ;
struct gctl_req {int dummy; } ;
struct g_provider {int dummy; } ;
struct g_geom {struct gv_volume* softc; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  GV_EVENT_CREATE_DRIVE ; 
 int /*<<< orphan*/  GV_EVENT_CREATE_PLEX ; 
 int /*<<< orphan*/  GV_EVENT_CREATE_SD ; 
 int /*<<< orphan*/  GV_EVENT_CREATE_VOLUME ; 
 int /*<<< orphan*/  GV_EVENT_SAVE_CONFIG ; 
 int /*<<< orphan*/  GV_EVENT_SETUP_OBJECTS ; 
 int GV_FLAG_F ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct gv_volume*,struct gv_volume*,int) ; 
 struct gv_volume* FUNC1 (int,int) ; 
 struct g_provider* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*,...) ; 
 void* FUNC5 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/ * FUNC6 (struct gv_volume*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct gv_volume*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (struct gv_volume*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (struct gv_volume*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (struct gv_volume*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct gv_volume*,int /*<<< orphan*/ ,struct gv_volume*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC13(struct g_geom *gp, struct gctl_req *req)
{
	struct gv_softc *sc;
	struct gv_drive *d, *d2;
	struct gv_plex *p, *p2;
	struct gv_sd *s, *s2;
	struct gv_volume *v, *v2;
	struct g_provider *pp;
	int error, i, *drives, *flags, *plexes, *subdisks, *volumes;
	char buf[20];

	FUNC3();

	sc = gp->softc;

	/* Find out how many of each object have been passed in. */
	volumes = FUNC5(req, "volumes", sizeof(*volumes));
	plexes = FUNC5(req, "plexes", sizeof(*plexes));
	subdisks = FUNC5(req, "subdisks", sizeof(*subdisks));
	drives = FUNC5(req, "drives", sizeof(*drives));
	if (volumes == NULL || plexes == NULL || subdisks == NULL ||
	    drives == NULL) {
		FUNC4(req, "number of objects not given");
		return (-1);
	}
	flags = FUNC5(req, "flags", sizeof(*flags));
	if (flags == NULL) {
		FUNC4(req, "flags not given");
		return (-1);
	}

	/* First, handle drive definitions ... */
	for (i = 0; i < *drives; i++) {
		FUNC12(buf, sizeof(buf), "drive%d", i);
		d2 = FUNC5(req, buf, sizeof(*d2));
		if (d2 == NULL) {
			FUNC4(req, "no drive definition given");
			return (-1);
		}
		/*
		 * Make sure that the device specified in the drive config is
		 * an active GEOM provider.
		 */
		pp = FUNC2(d2->device);
		if (pp == NULL) {
			FUNC4(req, "%s: device not found", d2->device);
			goto error;
		}
		if (FUNC6(sc, d2->name) != NULL) {
			/* Ignore error. */
			if (*flags & GV_FLAG_F)
				continue;
			FUNC4(req, "drive '%s' already exists", d2->name);
			goto error;
		}
		if (FUNC7(sc, d2->device) != NULL) {
			FUNC4(req, "device '%s' already configured in "
			    "gvinum", d2->device);
			goto error;
		}


		d = FUNC1(sizeof(*d), M_WAITOK | M_ZERO);
		FUNC0(d2, d, sizeof(*d));

		FUNC11(sc, GV_EVENT_CREATE_DRIVE, d, NULL, 0, 0);
	}

	/* ... then volume definitions ... */
	for (i = 0; i < *volumes; i++) {
		error = 0;
		FUNC12(buf, sizeof(buf), "volume%d", i);
		v2 = FUNC5(req, buf, sizeof(*v2));
		if (v2 == NULL) {
			FUNC4(req, "no volume definition given");
			return (-1);
		}
		if (FUNC10(sc, v2->name) != NULL) {
			/* Ignore error. */
			if (*flags & GV_FLAG_F)
				continue;
			FUNC4(req, "volume '%s' already exists", v2->name);
			goto error;
		}

		v = FUNC1(sizeof(*v), M_WAITOK | M_ZERO);
		FUNC0(v2, v, sizeof(*v));

		FUNC11(sc, GV_EVENT_CREATE_VOLUME, v, NULL, 0, 0);
	}

	/* ... then plex definitions ... */
	for (i = 0; i < *plexes; i++) {
		error = 0;
		FUNC12(buf, sizeof(buf), "plex%d", i);
		p2 = FUNC5(req, buf, sizeof(*p2));
		if (p2 == NULL) {
			FUNC4(req, "no plex definition given");
			return (-1);
		}
		if (FUNC8(sc, p2->name) != NULL) {
			/* Ignore error. */
			if (*flags & GV_FLAG_F)
				continue;
			FUNC4(req, "plex '%s' already exists", p2->name);
			goto error;
		}

		p = FUNC1(sizeof(*p), M_WAITOK | M_ZERO);
		FUNC0(p2, p, sizeof(*p));

		FUNC11(sc, GV_EVENT_CREATE_PLEX, p, NULL, 0, 0);
	}

	/* ... and, finally, subdisk definitions. */
	for (i = 0; i < *subdisks; i++) {
		error = 0;
		FUNC12(buf, sizeof(buf), "sd%d", i);
		s2 = FUNC5(req, buf, sizeof(*s2));
		if (s2 == NULL) {
			FUNC4(req, "no subdisk definition given");
			return (-1);
		}
		if (FUNC9(sc, s2->name) != NULL) {
			/* Ignore error. */
			if (*flags & GV_FLAG_F)
				continue;
			FUNC4(req, "sd '%s' already exists", s2->name);
			goto error;
		}

		s = FUNC1(sizeof(*s), M_WAITOK | M_ZERO);
		FUNC0(s2, s, sizeof(*s));

		FUNC11(sc, GV_EVENT_CREATE_SD, s, NULL, 0, 0);
	}

error:
	FUNC11(sc, GV_EVENT_SETUP_OBJECTS, sc, NULL, 0, 0);
	FUNC11(sc, GV_EVENT_SAVE_CONFIG, sc, NULL, 0, 0);

	return (0);
}