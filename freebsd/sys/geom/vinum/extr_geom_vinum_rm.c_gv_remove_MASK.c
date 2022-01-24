#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gv_volume {char* name; int /*<<< orphan*/  consumer; TYPE_2__* plex_sc; int /*<<< orphan*/  volume; TYPE_1__* vol_sc; int /*<<< orphan*/  subdisks; int /*<<< orphan*/  plexes; } ;
struct gv_softc {char* name; int /*<<< orphan*/  consumer; TYPE_2__* plex_sc; int /*<<< orphan*/  volume; TYPE_1__* vol_sc; int /*<<< orphan*/  subdisks; int /*<<< orphan*/  plexes; } ;
struct gv_sd {char* name; int /*<<< orphan*/  consumer; TYPE_2__* plex_sc; int /*<<< orphan*/  volume; TYPE_1__* vol_sc; int /*<<< orphan*/  subdisks; int /*<<< orphan*/  plexes; } ;
struct gv_plex {char* name; int /*<<< orphan*/  consumer; TYPE_2__* plex_sc; int /*<<< orphan*/  volume; TYPE_1__* vol_sc; int /*<<< orphan*/  subdisks; int /*<<< orphan*/  plexes; } ;
struct gv_drive {char* name; int /*<<< orphan*/  consumer; TYPE_2__* plex_sc; int /*<<< orphan*/  volume; TYPE_1__* vol_sc; int /*<<< orphan*/  subdisks; int /*<<< orphan*/  plexes; } ;
struct gctl_req {int dummy; } ;
struct g_geom {struct gv_volume* softc; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int plexcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  GV_EVENT_RM_DRIVE ; 
 int /*<<< orphan*/  GV_EVENT_RM_PLEX ; 
 int /*<<< orphan*/  GV_EVENT_RM_SD ; 
 int /*<<< orphan*/  GV_EVENT_RM_VOLUME ; 
 int /*<<< orphan*/  GV_EVENT_SAVE_CONFIG ; 
 int GV_FLAG_F ; 
 int GV_FLAG_R ; 
#define  GV_TYPE_DRIVE 131 
#define  GV_TYPE_PLEX 130 
#define  GV_TYPE_SD 129 
#define  GV_TYPE_VOL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,char*,...) ; 
 char* FUNC2 (struct gctl_req*,char*,int /*<<< orphan*/ *) ; 
 int* FUNC3 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct gv_volume* FUNC5 (struct gv_volume*,char*) ; 
 struct gv_volume* FUNC6 (struct gv_volume*,char*) ; 
 struct gv_volume* FUNC7 (struct gv_volume*,char*) ; 
 struct gv_volume* FUNC8 (struct gv_volume*,char*) ; 
 int FUNC9 (struct gv_volume*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct gv_volume*,int /*<<< orphan*/ ,struct gv_volume*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int) ; 

void
FUNC12(struct g_geom *gp, struct gctl_req *req)
{
	struct gv_softc *sc;
	struct gv_volume *v;
	struct gv_plex *p;
	struct gv_sd *s;
	struct gv_drive *d;
	int *argc, *flags;
	char *argv, buf[20];
	int i, type;

	argc = FUNC3(req, "argc", sizeof(*argc));

	if (argc == NULL || *argc == 0) {
		FUNC1(req, "no arguments given");
		return;
	}

	flags = FUNC3(req, "flags", sizeof(*flags));
	if (flags == NULL) {
		FUNC1(req, "no flags given");
		return;
	}

	sc = gp->softc;

	/* XXX config locking */

	for (i = 0; i < *argc; i++) {
		FUNC11(buf, sizeof(buf), "argv%d", i);
		argv = FUNC2(req, buf, NULL);
		if (argv == NULL)
			continue;
		type = FUNC9(sc, argv);
		switch (type) {
		case GV_TYPE_VOL:
			v = FUNC8(sc, argv);

			/*
			 * If this volume has plexes, we want a recursive
			 * removal.
			 */
			if (!FUNC0(&v->plexes) && !(*flags & GV_FLAG_R)) {
				FUNC1(req, "volume '%s' has attached "
				    "plexes - need recursive removal", v->name);
				return;
			}

			FUNC10(sc, GV_EVENT_RM_VOLUME, v, NULL, 0, 0);
			break;

		case GV_TYPE_PLEX:
			p = FUNC6(sc, argv);

			/*
			 * If this plex has subdisks, we want a recursive
			 * removal.
			 */
			if (!FUNC0(&p->subdisks) &&
			    !(*flags & GV_FLAG_R)) {
				FUNC1(req, "plex '%s' has attached "
				    "subdisks - need recursive removal",
				    p->name);
				return;
			}

			/* Don't allow removal of the only plex of a volume. */
			if (p->vol_sc != NULL && p->vol_sc->plexcount == 1) {
				FUNC1(req, "plex '%s' is still attached "
				    "to volume '%s'", p->name, p->volume);
				return;
			}

			FUNC10(sc, GV_EVENT_RM_PLEX, p, NULL, 0, 0);
			break;

		case GV_TYPE_SD:
			s = FUNC7(sc, argv);

			/* Don't allow removal if attached to a plex. */
			if (s->plex_sc != NULL) {
				FUNC1(req, "subdisk '%s' is still attached"
				    " to plex '%s'", s->name, s->plex_sc->name);
				return;
			}

			FUNC10(sc, GV_EVENT_RM_SD, s, NULL, 0, 0);
			break;

		case GV_TYPE_DRIVE:
			d = FUNC5(sc, argv);
			/* We don't allow to remove open drives. */
			if (FUNC4(d->consumer) &&
			    !(*flags & GV_FLAG_F)) {
				FUNC1(req, "drive '%s' is open", d->name);
				return;
			}

			/* A drive with subdisks needs a recursive removal. */
/*			if (!LIST_EMPTY(&d->subdisks) &&
			    !(*flags & GV_FLAG_R)) {
				gctl_error(req, "drive '%s' still has subdisks"
				    " - need recursive removal", d->name);
				return;
			}*/

			FUNC10(sc, GV_EVENT_RM_DRIVE, d, NULL, *flags,
			    0);
			break;

		default:
			FUNC1(req, "unknown object '%s'", argv);
			return;
		}
	}

	FUNC10(sc, GV_EVENT_SAVE_CONFIG, sc, NULL, 0, 0);
}