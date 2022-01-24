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
struct gv_sd {int state; int flags; int /*<<< orphan*/ * plex_sc; int /*<<< orphan*/  name; struct gv_drive* drive_sc; } ;
struct gv_drive {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ GV_DRIVE_UP ; 
 int GV_SD_CANGOUP ; 
 int GV_SD_DOWN ; 
 int GV_SD_NEWBORN ; 
 void* GV_SD_STALE ; 
 void* GV_SD_UP ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct gv_sd *s)
{
	struct gv_drive *d;
	int oldstate;

	FUNC1(s != NULL, ("gv_update_sd_state: NULL s"));
	d = s->drive_sc;
	FUNC1(d != NULL, ("gv_update_sd_state: NULL d"));

	oldstate = s->state;
	
	/* If our drive isn't up we cannot be up either. */
	if (d->state != GV_DRIVE_UP) {
		s->state = GV_SD_DOWN;
	/* If this subdisk was just created, we assume it is good.*/
	} else if (s->flags & GV_SD_NEWBORN) {
		s->state = GV_SD_UP;
		s->flags &= ~GV_SD_NEWBORN;
	} else if (s->state != GV_SD_UP) {
		if (s->flags & GV_SD_CANGOUP) {
			s->state = GV_SD_UP;
			s->flags &= ~GV_SD_CANGOUP;
		} else
			s->state = GV_SD_STALE;
	} else
		s->state = GV_SD_UP;
	
	if (s->state != oldstate)
		FUNC0(1, "subdisk %s state change: %s -> %s", s->name,
		    FUNC2(oldstate), FUNC2(s->state));

	/* Update the plex, if we have one. */
	if (s->plex_sc != NULL)
		FUNC3(s->plex_sc);
}