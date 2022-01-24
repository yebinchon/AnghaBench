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
struct gv_volume {int dummy; } ;
struct gv_softc {int dummy; } ;
struct gv_sd {TYPE_1__* drive_sc; struct gv_plex* plex_sc; } ;
struct gv_plex {struct gv_volume* vol_sc; int /*<<< orphan*/  size; int /*<<< orphan*/  sdcount; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int GV_DRIVE_REFERENCED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gv_sd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  from_drive ; 
 int /*<<< orphan*/  FUNC2 (struct gv_sd*) ; 
 int /*<<< orphan*/  FUNC3 (struct gv_sd*) ; 
 int /*<<< orphan*/  FUNC4 (struct gv_plex*) ; 
 int /*<<< orphan*/  FUNC5 (struct gv_volume*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gv_volume*) ; 
 int /*<<< orphan*/  in_plex ; 
 int /*<<< orphan*/  sd ; 

void
FUNC7(struct gv_softc *sc, struct gv_sd *s)
{
	struct gv_plex *p;
	struct gv_volume *v;

	FUNC0(s != NULL, ("gv_rm_sd: NULL s"));

	p = s->plex_sc;
	v = NULL;

	/* Clean up. */
	if (p != NULL) {
		FUNC1(s, in_plex);
		s->plex_sc = NULL;
		p->sdcount--;
		/* Update the plexsize. */
		p->size = FUNC4(p);
		v = p->vol_sc;
		if (v != NULL) {
			/* Update the size of our plex' volume. */
			FUNC5(v, FUNC6(v));
		}
	}
	if (s->drive_sc && !(s->drive_sc->flags & GV_DRIVE_REFERENCED))
		FUNC1(s, from_drive);
	FUNC1(s, sd);
	FUNC3(s);
	FUNC2(s);
}