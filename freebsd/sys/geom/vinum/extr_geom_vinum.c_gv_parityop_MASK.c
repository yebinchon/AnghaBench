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
struct gv_plex {scalar_t__ state; char* name; scalar_t__ org; } ;
struct gctl_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GV_EVENT_PARITY_CHECK ; 
 int /*<<< orphan*/  GV_EVENT_PARITY_REBUILD ; 
 scalar_t__ GV_PLEX_RAID5 ; 
 scalar_t__ GV_PLEX_UP ; 
 int GV_TYPE_PLEX ; 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,char*,...) ; 
 char* FUNC1 (struct gctl_req*,char*,int /*<<< orphan*/ *) ; 
 int* FUNC2 (struct gctl_req*,char*,int) ; 
 struct gv_plex* FUNC3 (struct gv_softc*,char*) ; 
 int FUNC4 (struct gv_softc*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct gv_softc*,int /*<<< orphan*/ ,struct gv_plex*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct gv_softc *sc, struct gctl_req *req)
{
	struct gv_plex *p;
	int *flags, *rebuild, type;
	char *plex;

	plex = FUNC1(req, "plex", NULL);
	if (plex == NULL) {
		FUNC0(req, "no plex given");
		return;
	}

	flags = FUNC2(req, "flags", sizeof(*flags));
	if (flags == NULL) {
		FUNC0(req, "no flags given");
		return;
	}

	rebuild = FUNC2(req, "rebuild", sizeof(*rebuild));
	if (rebuild == NULL) {
		FUNC0(req, "no operation given");
		return;
	}

	type = FUNC4(sc, plex);
	if (type != GV_TYPE_PLEX) {
		FUNC0(req, "'%s' is not a plex", plex);
		return;
	}
	p = FUNC3(sc, plex);

	if (p->state != GV_PLEX_UP) {
		FUNC0(req, "plex %s is not completely accessible",
		    p->name);
		return;
	}

	if (p->org != GV_PLEX_RAID5) {
		FUNC0(req, "plex %s is not a RAID5 plex", p->name);
		return;
	}

	/* Put it in the event queue. */
	/* XXX: The state of the plex might have changed when this event is
	 * picked up ... We should perhaps check this afterwards. */
	if (*rebuild)
		FUNC5(sc, GV_EVENT_PARITY_REBUILD, p, NULL, 0, 0);
	else
		FUNC5(sc, GV_EVENT_PARITY_CHECK, p, NULL, 0, 0);
}