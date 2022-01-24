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
typedef  int /*<<< orphan*/ * osd_method_t ;
typedef  int /*<<< orphan*/ * osd_destructor_t ;
struct TYPE_2__ {size_t osd_ntslots; int osd_nmethods; int /*<<< orphan*/  osd_module_lock; int /*<<< orphan*/ ** osd_methods; int /*<<< orphan*/ ** osd_destructors; int /*<<< orphan*/  osd_object_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_OSD ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,size_t) ; 
 size_t OSD_FIRST ; 
 size_t OSD_LAST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * osd_default_destructor ; 
 TYPE_1__* osdm ; 
 int /*<<< orphan*/ ** FUNC5 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(u_int type, osd_destructor_t destructor, osd_method_t *methods)
{
	void *newptr;
	u_int i, m;

	FUNC0(type >= OSD_FIRST && type <= OSD_LAST, ("Invalid type."));

	/*
	 * If no destructor is given, use default one. We need to use some
	 * destructor, because NULL destructor means unused slot.
	 */
	if (destructor == NULL)
		destructor = osd_default_destructor;

	FUNC8(&osdm[type].osd_module_lock);
	/*
	 * First, we try to find unused slot.
	 */
	for (i = 0; i < osdm[type].osd_ntslots; i++) {
		if (osdm[type].osd_destructors[i] == NULL) {
			FUNC1("Unused slot found (type=%u, slot=%u).",
			    type, i);
			break;
		}
	}
	/*
	 * If no unused slot was found, allocate one.
	 */
	if (i == osdm[type].osd_ntslots) {
		osdm[type].osd_ntslots++;
		if (osdm[type].osd_nmethods != 0)
			osdm[type].osd_methods = FUNC5(osdm[type].osd_methods,
			    sizeof(osd_method_t) * osdm[type].osd_ntslots *
			    osdm[type].osd_nmethods, M_OSD, M_WAITOK);
		newptr = FUNC4(sizeof(osd_destructor_t) *
		    osdm[type].osd_ntslots, M_OSD, M_WAITOK);
		FUNC6(&osdm[type].osd_object_lock);
		FUNC2(osdm[type].osd_destructors, newptr,
		    sizeof(osd_destructor_t) * i);
		FUNC3(osdm[type].osd_destructors, M_OSD);
		osdm[type].osd_destructors = newptr;
		FUNC7(&osdm[type].osd_object_lock);
		FUNC1("New slot allocated (type=%u, slot=%u).",
		    type, i + 1);
	}

	osdm[type].osd_destructors[i] = destructor;
	if (osdm[type].osd_nmethods != 0) {
		for (m = 0; m < osdm[type].osd_nmethods; m++)
			osdm[type].osd_methods[i * osdm[type].osd_nmethods + m]
			    = methods != NULL ? methods[m] : NULL;
	}
	FUNC9(&osdm[type].osd_module_lock);
	return (i + 1);
}