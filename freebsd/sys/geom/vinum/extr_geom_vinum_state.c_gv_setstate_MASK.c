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
struct gv_volume {int dummy; } ;
struct gv_softc {int dummy; } ;
typedef  struct gv_volume gv_sd ;
typedef  struct gv_volume gv_plex ;
typedef  struct gv_volume gv_drive ;
struct gctl_req {int dummy; } ;
struct g_geom {struct gv_softc* softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GV_EVENT_SET_DRIVE_STATE ; 
 int /*<<< orphan*/  GV_EVENT_SET_PLEX_STATE ; 
 int /*<<< orphan*/  GV_EVENT_SET_SD_STATE ; 
 int /*<<< orphan*/  GV_EVENT_SET_VOL_STATE ; 
 int GV_FLAG_F ; 
 int GV_SETSTATE_FORCE ; 
#define  GV_TYPE_DRIVE 131 
#define  GV_TYPE_PLEX 130 
#define  GV_TYPE_SD 129 
#define  GV_TYPE_VOL 128 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,char*,...) ; 
 char* FUNC1 (struct gctl_req*,char*,int /*<<< orphan*/ *) ; 
 int* FUNC2 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct gv_volume* FUNC4 (struct gv_softc*,char*) ; 
 struct gv_volume* FUNC5 (struct gv_softc*,char*) ; 
 struct gv_volume* FUNC6 (struct gv_softc*,char*) ; 
 struct gv_volume* FUNC7 (struct gv_softc*,char*) ; 
 int FUNC8 (struct gv_softc*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct gv_softc*,int /*<<< orphan*/ ,struct gv_volume*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

void
FUNC13(struct g_geom *gp, struct gctl_req *req)
{
	struct gv_softc *sc;
	struct gv_sd *s;
	struct gv_drive *d;
	struct gv_volume *v;
	struct gv_plex *p;
	char *obj, *state;
	int f, *flags, type;

	f = 0;
	obj = FUNC1(req, "object", NULL);
	if (obj == NULL) {
		FUNC0(req, "no object given");
		return;
	}

	state = FUNC1(req, "state", NULL);
	if (state == NULL) {
		FUNC0(req, "no state given");
		return;
	}

	flags = FUNC2(req, "flags", sizeof(*flags));
	if (flags == NULL) {
		FUNC0(req, "no flags given");
		return;
	}

	if (*flags & GV_FLAG_F)
		f = GV_SETSTATE_FORCE;

	sc = gp->softc;
	type = FUNC8(sc, obj);
	switch (type) {
	case GV_TYPE_VOL:
		if (FUNC12(state) < 0) {
			FUNC0(req, "invalid volume state '%s'", state);
			break;
		}
		v = FUNC7(sc, obj);
		FUNC10(sc, GV_EVENT_SET_VOL_STATE, v, NULL,
		    FUNC12(state), f);
		break;

	case GV_TYPE_PLEX:
		if (FUNC9(state) < 0) {
			FUNC0(req, "invalid plex state '%s'", state);
			break;
		}
		p = FUNC5(sc, obj);
		FUNC10(sc, GV_EVENT_SET_PLEX_STATE, p, NULL,
		    FUNC9(state), f);
		break;

	case GV_TYPE_SD:
		if (FUNC11(state) < 0) {
			FUNC0(req, "invalid subdisk state '%s'", state);
			break;
		}
		s = FUNC6(sc, obj);
		FUNC10(sc, GV_EVENT_SET_SD_STATE, s, NULL,
		    FUNC11(state), f);
		break;

	case GV_TYPE_DRIVE:
		if (FUNC3(state) < 0) {
			FUNC0(req, "invalid drive state '%s'", state);
			break;
		}
		d = FUNC4(sc, obj);
		FUNC10(sc, GV_EVENT_SET_DRIVE_STATE, d, NULL,
		    FUNC3(state), f);
		break;

	default:
		FUNC0(req, "unknown object '%s'", obj);
		break;
	}
}