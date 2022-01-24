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
 int /*<<< orphan*/  GV_EVENT_RENAME_DRIVE ; 
 int /*<<< orphan*/  GV_EVENT_RENAME_PLEX ; 
 int /*<<< orphan*/  GV_EVENT_RENAME_SD ; 
 int /*<<< orphan*/  GV_EVENT_RENAME_VOL ; 
 int /*<<< orphan*/  GV_MAXDRIVENAME ; 
 int /*<<< orphan*/  GV_MAXPLEXNAME ; 
 int /*<<< orphan*/  GV_MAXSDNAME ; 
 int /*<<< orphan*/  GV_MAXVOLNAME ; 
#define  GV_TYPE_DRIVE 131 
#define  GV_TYPE_PLEX 130 
#define  GV_TYPE_SD 129 
#define  GV_TYPE_VOL 128 
 int M_WAITOK ; 
 int M_ZERO ; 
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,char*,...) ; 
 char* FUNC2 (struct gctl_req*,char*,int /*<<< orphan*/ *) ; 
 int* FUNC3 (struct gctl_req*,char*,int) ; 
 struct gv_volume* FUNC4 (struct gv_softc*,char*) ; 
 struct gv_volume* FUNC5 (struct gv_softc*,char*) ; 
 struct gv_volume* FUNC6 (struct gv_softc*,char*) ; 
 struct gv_volume* FUNC7 (struct gv_softc*,char*) ; 
 int FUNC8 (struct gv_softc*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct gv_softc*,int /*<<< orphan*/ ,struct gv_volume*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 

void
FUNC11(struct g_geom *gp, struct gctl_req *req)
{
	struct gv_softc *sc;
	struct gv_volume *v;
	struct gv_plex *p;
	struct gv_sd *s;
	struct gv_drive *d;
	char *newname, *object, *name;
	int *flags, type;

	sc = gp->softc;

	flags = FUNC3(req, "flags", sizeof(*flags));
	if (flags == NULL) {
		FUNC1(req, "no flags given");
		return;
	}

	newname = FUNC2(req, "newname", NULL);
	if (newname == NULL) {
		FUNC1(req, "no new name given");
		return;
	}

	object = FUNC2(req, "object", NULL);
	if (object == NULL) {
		FUNC1(req, "no object given");
		return;
	}

	type = FUNC8(sc, object);
	switch (type) {
	case GV_TYPE_VOL:
		v = FUNC7(sc, object);
		if (v == NULL) 	{
			FUNC1(req, "unknown volume '%s'", object);
			return;
		}
		name = FUNC0(GV_MAXVOLNAME, M_WAITOK | M_ZERO);
		FUNC10(name, newname, GV_MAXVOLNAME);
		FUNC9(sc, GV_EVENT_RENAME_VOL, v, name, *flags, 0);
		break;
	case GV_TYPE_PLEX:
		p = FUNC5(sc, object);
		if (p == NULL) {
			FUNC1(req, "unknown plex '%s'", object);
			return;
		}
		name = FUNC0(GV_MAXPLEXNAME, M_WAITOK | M_ZERO);
		FUNC10(name, newname, GV_MAXPLEXNAME);
		FUNC9(sc, GV_EVENT_RENAME_PLEX, p, name, *flags, 0);
		break;
	case GV_TYPE_SD:
		s = FUNC6(sc, object);
		if (s == NULL) {
			FUNC1(req, "unknown subdisk '%s'", object);
			return;
		}
		name = FUNC0(GV_MAXSDNAME, M_WAITOK | M_ZERO);
		FUNC10(name, newname, GV_MAXSDNAME);
		FUNC9(sc, GV_EVENT_RENAME_SD, s, name, *flags, 0);
		break;
	case GV_TYPE_DRIVE:
		d = FUNC4(sc, object);
		if (d == NULL) {
			FUNC1(req, "unknown drive '%s'", object);
			return;
		}
		name = FUNC0(GV_MAXDRIVENAME, M_WAITOK | M_ZERO);
		FUNC10(name, newname, GV_MAXDRIVENAME);
		FUNC9(sc, GV_EVENT_RENAME_DRIVE, d, name, *flags, 0);
		break;
	default:
		FUNC1(req, "unknown object '%s'", object);
		return;
	}
}