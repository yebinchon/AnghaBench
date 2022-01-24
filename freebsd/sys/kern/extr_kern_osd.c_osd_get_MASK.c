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
struct osd {size_t osd_nslots; void** osd_slots; } ;
struct TYPE_2__ {int /*<<< orphan*/  osd_object_lock; int /*<<< orphan*/ ** osd_destructors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,size_t,...) ; 
 size_t OSD_FIRST ; 
 size_t OSD_LAST ; 
 TYPE_1__* osdm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct rm_priotracker*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct rm_priotracker*) ; 

void *
FUNC4(u_int type, struct osd *osd, u_int slot)
{
	struct rm_priotracker tracker;
	void *value;

	FUNC0(type >= OSD_FIRST && type <= OSD_LAST, ("Invalid type."));
	FUNC0(slot > 0, ("Invalid slot."));
	FUNC0(osdm[type].osd_destructors[slot - 1] != NULL, ("Unused slot."));

	FUNC2(&osdm[type].osd_object_lock, &tracker);
	if (slot > osd->osd_nslots) {
		value = NULL;
		FUNC1("Slot doesn't exist (type=%u, slot=%u).", type, slot);
	} else {
		value = osd->osd_slots[slot - 1];
		FUNC1("Returning slot value (type=%u, slot=%u, value=%p).",
		    type, slot, value);
	}
	FUNC3(&osdm[type].osd_object_lock, &tracker);
	return (value);
}