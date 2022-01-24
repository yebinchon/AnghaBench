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
typedef  struct gv_volume gv_plex ;
struct gctl_req {int dummy; } ;
struct g_geom {struct gv_softc* softc; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  GV_EVENT_START_PLEX ; 
 int /*<<< orphan*/  GV_EVENT_START_VOLUME ; 
#define  GV_TYPE_DRIVE 131 
#define  GV_TYPE_PLEX 130 
#define  GV_TYPE_SD 129 
#define  GV_TYPE_VOL 128 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,char*,...) ; 
 char* FUNC1 (struct gctl_req*,char*,int /*<<< orphan*/ *) ; 
 int* FUNC2 (struct gctl_req*,char*,int) ; 
 struct gv_volume* FUNC3 (struct gv_softc*,char*) ; 
 struct gv_volume* FUNC4 (struct gv_softc*,char*) ; 
 int FUNC5 (struct gv_softc*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct gv_softc*,int /*<<< orphan*/ ,struct gv_volume*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 

void
FUNC8(struct g_geom *gp, struct gctl_req *req)
{
	struct gv_softc *sc;
	struct gv_volume *v;
	struct gv_plex *p;
	int *argc, *initsize;
	char *argv, buf[20];
	int i, type;

	argc = FUNC2(req, "argc", sizeof(*argc));
	initsize = FUNC2(req, "initsize", sizeof(*initsize));

	if (argc == NULL || *argc == 0) {
		FUNC0(req, "no arguments given");
		return;
	}

	sc = gp->softc;

	for (i = 0; i < *argc; i++) {
		FUNC7(buf, sizeof(buf), "argv%d", i);
		argv = FUNC1(req, buf, NULL);
		if (argv == NULL)
			continue;
		type = FUNC5(sc, argv);
		switch (type) {
		case GV_TYPE_VOL:
			v = FUNC4(sc, argv);
			if (v != NULL)
				FUNC6(sc, GV_EVENT_START_VOLUME, v,
				    NULL, *initsize, 0);
			break;

		case GV_TYPE_PLEX:
			p = FUNC3(sc, argv);
			if (p != NULL)
				FUNC6(sc, GV_EVENT_START_PLEX, p, NULL,
				    *initsize, 0);
			break;

		case GV_TYPE_SD:
		case GV_TYPE_DRIVE:
			/* XXX Not implemented, but what is the use? */
			FUNC0(req, "unable to start '%s' - not yet supported",
			    argv);
			return;
		default:
			FUNC0(req, "unknown object '%s'", argv);
			return;
		}
	}
}