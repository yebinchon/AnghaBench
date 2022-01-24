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
typedef  size_t u_int ;
struct rm_priotracker {int dummy; } ;
struct osd {size_t osd_nslots; int /*<<< orphan*/ * osd_slots; } ;
struct TYPE_2__ {int /*<<< orphan*/  osd_object_lock; int /*<<< orphan*/ ** osd_destructors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,...) ; 
 size_t OSD_FIRST ; 
 size_t OSD_LAST ; 
 int /*<<< orphan*/  FUNC2 (size_t,struct osd*,size_t,int /*<<< orphan*/ ) ; 
 TYPE_1__* osdm ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct rm_priotracker*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct rm_priotracker*) ; 

void
FUNC5(u_int type, struct osd *osd)
{
	struct rm_priotracker tracker;
	u_int i;

	FUNC0(type >= OSD_FIRST && type <= OSD_LAST, ("Invalid type."));

	if (osd->osd_nslots == 0) {
		FUNC0(osd->osd_slots == NULL, ("Non-null osd_slots."));
		/* No OSD attached, just leave. */
		return;
	}

	FUNC3(&osdm[type].osd_object_lock, &tracker);
	for (i = 1; i <= osd->osd_nslots; i++) {
		if (osdm[type].osd_destructors[i - 1] != NULL)
			FUNC2(type, osd, i, 0);
		else
			FUNC1("Unused slot (type=%u, slot=%u).", type, i);
	}
	FUNC4(&osdm[type].osd_object_lock, &tracker);
	FUNC1("Object exit (type=%u).", type);
}