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
struct gv_volume {int /*<<< orphan*/ * last_read_plex; int /*<<< orphan*/  plexcount; int /*<<< orphan*/  provider; } ;
struct gv_plex {scalar_t__ state; int /*<<< orphan*/  vinumconf; int /*<<< orphan*/  volume; struct gv_volume* vol_sc; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int GV_ERR_ISBUSY ; 
 int GV_FLAG_F ; 
 int /*<<< orphan*/  GV_MAXVOLNAME ; 
 scalar_t__ GV_PLEX_UP ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct gv_plex*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gv_volume*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gv_volume*) ; 
 int /*<<< orphan*/  in_volume ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(struct gv_plex *p, int flags)
{
	struct gv_volume *v;

	FUNC2();
	v = p->vol_sc;

	if (v == NULL) {
		FUNC0(1, "unable to detach %s: already detached",
		    p->name);
		return (0); /* Not an error. */
	}

	/*
	 * Only proceed if forced or volume inactive.
	 */
	if (!(flags & GV_FLAG_F) && (FUNC3(v->provider) ||
	    p->state == GV_PLEX_UP)) {
		FUNC0(1, "unable to detach %s: volume %s is busy",
		    p->name, p->volume);
		return (GV_ERR_ISBUSY);
	}
	v->plexcount--;
	/* Make sure someone don't read us when gone. */
	v->last_read_plex = NULL; 
	FUNC1(p, in_volume);
	p->vol_sc = NULL;
	FUNC7(p->volume, 0, GV_MAXVOLNAME);
	FUNC5(v, FUNC6(v));
	FUNC4(p->vinumconf);
	return (0);
}