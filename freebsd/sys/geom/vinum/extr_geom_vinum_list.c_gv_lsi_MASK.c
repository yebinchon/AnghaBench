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
struct sbuf {int dummy; } ;
struct gv_sd {int size; scalar_t__ state; int initialized; int plex_offset; int drive; int drive_offset; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; TYPE_1__* drive_sc; int /*<<< orphan*/  plex; int /*<<< orphan*/ * plex_sc; } ;
typedef  int intmax_t ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int GV_FLAG_V ; 
 scalar_t__ GV_SD_INITIALIZING ; 
 scalar_t__ GV_SD_REVIVING ; 
 int MEGABYTE ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char*,...) ; 

void
FUNC3(struct gv_sd *s, struct sbuf *sb, int flags)
{
	if (flags & GV_FLAG_V) {
		FUNC2(sb, "Subdisk %s:\n", s->name);
		FUNC2(sb, "\t\tSize: %16jd bytes (%jd MB)\n",
		    (intmax_t)s->size, (intmax_t)s->size / MEGABYTE);
		FUNC2(sb, "\t\tState: %s\n", FUNC1(s->state));

		if (s->state == GV_SD_INITIALIZING ||
		    s->state == GV_SD_REVIVING) {
			if (s->state == GV_SD_INITIALIZING)
				FUNC2(sb, "\t\tInitialized: ");
			else
				FUNC2(sb, "\t\tRevived: ");
				
			FUNC2(sb, "%16jd bytes (%d%%)\n",
			    (intmax_t)s->initialized,
			    (int)((s->initialized * 100) / s->size));
		}

		if (s->plex_sc != NULL) {
			FUNC2(sb, "\t\tPlex %s at offset %jd (%s)\n",
			    s->plex, (intmax_t)s->plex_offset,
			    FUNC0(s->plex_offset, 1));
		}

		FUNC2(sb, "\t\tDrive %s (%s) at offset %jd (%s)\n",
		    s->drive,
		    s->drive_sc == NULL ? "*missing*" : s->drive_sc->name,
		    (intmax_t)s->drive_offset,
		    FUNC0(s->drive_offset, 1));
		FUNC2(sb, "\t\tFlags: %d\n", s->flags);
	} else {
		FUNC2(sb, "S %-21s State: ", s->name);
		if (s->state == GV_SD_INITIALIZING ||
		    s->state == GV_SD_REVIVING) {
			if (s->state == GV_SD_INITIALIZING)
				FUNC2(sb, "I ");
			else
				FUNC2(sb, "R ");
			FUNC2(sb, "%d%%\t",
			    (int)((s->initialized * 100) / s->size));
		} else {
			FUNC2(sb, "%s\t", FUNC1(s->state));
		}
		FUNC2(sb, "D: %-12s Size: %s\n", s->drive,
		    FUNC0(s->size, 0));
	}
}