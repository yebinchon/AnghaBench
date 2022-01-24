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
struct gv_softc {int dummy; } ;
struct gv_sd {int dummy; } ;
struct gv_drive {int dummy; } ;
struct gctl_req {int dummy; } ;
struct g_geom {struct gv_softc* softc; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  GV_EVENT_MOVE_SD ; 
 int GV_TYPE_DRIVE ; 
 int GV_TYPE_SD ; 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,char*,...) ; 
 char* FUNC1 (struct gctl_req*,char*,int /*<<< orphan*/ *) ; 
 int* FUNC2 (struct gctl_req*,char*,int) ; 
 struct gv_drive* FUNC3 (struct gv_softc*,char*) ; 
 struct gv_sd* FUNC4 (struct gv_softc*,char*) ; 
 int FUNC5 (struct gv_softc*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct gv_softc*,int /*<<< orphan*/ ,struct gv_sd*,struct gv_drive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 

void
FUNC8(struct g_geom *gp, struct gctl_req *req)
{
	struct gv_softc *sc;
	struct gv_sd *s;
	struct gv_drive *d;
	char buf[20], *destination, *object;
	int *argc, *flags, i, type;

	sc = gp->softc;

	argc = FUNC2(req, "argc", sizeof(*argc));
	if (argc == NULL) {
		FUNC0(req, "no arguments given");
		return;
	}
	flags = FUNC2(req, "flags", sizeof(*flags));
	if (flags == NULL) {
		FUNC0(req, "no flags given");
		return;
	}
	destination = FUNC1(req, "destination", NULL);
	if (destination == NULL) {
		FUNC0(req, "no destination given");
		return;
	}
	if (FUNC5(sc, destination) != GV_TYPE_DRIVE) {
		FUNC0(req, "destination '%s' is not a drive", destination);
		return;
	}
	d = FUNC3(sc, destination);

	/*
	 * We start with 1 here, because argv[0] on the command line is the
	 * destination drive.
	 */
	for (i = 1; i < *argc; i++) {
		FUNC7(buf, sizeof(buf), "argv%d", i);
		object = FUNC1(req, buf, NULL);
		if (object == NULL)
			continue;

		type = FUNC5(sc, object);
		if (type != GV_TYPE_SD) {
			FUNC0(req, "you can only move subdisks; "
			    "'%s' is not a subdisk", object);
			return;
		}

		s = FUNC4(sc, object);
		if (s == NULL) {
			FUNC0(req, "unknown subdisk '%s'", object);
			return;
		}
		FUNC6(sc, GV_EVENT_MOVE_SD, s, d, *flags, 0);
	}
}