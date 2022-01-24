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
struct TYPE_2__ {int /*<<< orphan*/  osd_object_lock; int /*<<< orphan*/  osd_list_lock; int /*<<< orphan*/  osd_list; int /*<<< orphan*/ ** osd_destructors; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct osd*,int /*<<< orphan*/ ) ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_OSD ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,...) ; 
 size_t OSD_FIRST ; 
 size_t OSD_LAST ; 
 int /*<<< orphan*/  FUNC3 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void**,void**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void**) ; 
 int /*<<< orphan*/  osd_next ; 
 TYPE_1__* osdm ; 
 void** FUNC8 (void**,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct rm_priotracker*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct rm_priotracker*) ; 

int
FUNC11(u_int type, struct osd *osd, u_int slot, void **rsv,
    void *value)
{
	struct rm_priotracker tracker;

	FUNC0(type >= OSD_FIRST && type <= OSD_LAST, ("Invalid type."));
	FUNC0(slot > 0, ("Invalid slot."));
	FUNC0(osdm[type].osd_destructors[slot - 1] != NULL, ("Unused slot."));

	FUNC9(&osdm[type].osd_object_lock, &tracker);
	if (slot > osd->osd_nslots) {
		void **newptr;

		if (value == NULL) {
			FUNC2(
			    "Not allocating null slot (type=%u, slot=%u).",
			    type, slot);
			FUNC10(&osdm[type].osd_object_lock, &tracker);
			if (rsv)
				FUNC7(rsv);
			return (0);
		}

		/*
		 * Too few slots allocated here, so we need to extend or create
		 * the array.
		 */
		if (rsv) {
			/*
			 * Use the reserve passed in (assumed to be
			 * the right size).
			 */
			newptr = rsv;
			if (osd->osd_nslots != 0) {
				FUNC4(newptr, osd->osd_slots,
				    sizeof(void *) * osd->osd_nslots);
				FUNC3(osd->osd_slots, M_OSD);
			}
		} else {
			newptr = FUNC8(osd->osd_slots, sizeof(void *) * slot,
			    M_OSD, M_NOWAIT | M_ZERO);
			if (newptr == NULL) {
				FUNC10(&osdm[type].osd_object_lock,
				    &tracker);
				return (ENOMEM);
			}
		}
		if (osd->osd_nslots == 0) {
			/*
			 * First OSD for this object, so we need to put it
			 * onto the list.
			 */
			FUNC5(&osdm[type].osd_list_lock);
			FUNC1(&osdm[type].osd_list, osd, osd_next);
			FUNC6(&osdm[type].osd_list_lock);
			FUNC2("Setting first slot (type=%u).", type);
		} else
			FUNC2("Growing slots array (type=%u).", type);
		osd->osd_slots = newptr;
		osd->osd_nslots = slot;
	} else if (rsv)
		FUNC7(rsv);
	FUNC2("Setting slot value (type=%u, slot=%u, value=%p).", type,
	    slot, value);
	osd->osd_slots[slot - 1] = value;
	FUNC10(&osdm[type].osd_object_lock, &tracker);
	return (0);
}