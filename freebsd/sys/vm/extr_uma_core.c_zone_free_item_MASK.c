#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uma_zone_t ;
typedef  enum zfreeskip { ____Placeholder_zfreeskip } zfreeskip ;
struct TYPE_8__ {int uz_flags; scalar_t__ uz_ctor; scalar_t__ uz_max_items; scalar_t__ uz_items; scalar_t__ uz_sleepers; int /*<<< orphan*/  uz_frees; int /*<<< orphan*/  uz_arg; int /*<<< orphan*/  (* uz_release ) (int /*<<< orphan*/ ,void**,int) ;int /*<<< orphan*/  uz_size; int /*<<< orphan*/  (* uz_fini ) (void*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* uz_dtor ) (void*,int /*<<< orphan*/ ,void*) ;} ;

/* Variables and functions */
 int SKIP_CNT ; 
 int SKIP_DTOR ; 
 int SKIP_FINI ; 
 int SKIP_NONE ; 
 int UMA_ZONE_MALLOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void**,int) ; 
 scalar_t__ trash_ctor ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,void*,void*) ; 
 int FUNC8 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC10(uma_zone_t zone, void *item, void *udata, enum zfreeskip skip)
{
#ifdef INVARIANTS
	bool skipdbg;

	skipdbg = uma_dbg_zskip(zone, item);
	if (skip == SKIP_NONE && !skipdbg) {
		if (zone->uz_flags & UMA_ZONE_MALLOC)
			uma_dbg_free(zone, udata, item);
		else
			uma_dbg_free(zone, NULL, item);
	}

	if (skip < SKIP_DTOR && zone->uz_dtor != NULL &&
	    (!skipdbg || zone->uz_dtor != trash_dtor ||
	    zone->uz_ctor != trash_ctor))
#else
	if (skip < SKIP_DTOR && zone->uz_dtor != NULL)
#endif
		zone->uz_dtor(item, zone->uz_size, udata);

	if (skip < SKIP_FINI && zone->uz_fini)
		zone->uz_fini(item, zone->uz_size);

	zone->uz_release(zone->uz_arg, &item, 1);

	if (skip & SKIP_CNT)
		return;

	FUNC2(zone->uz_frees, 1);

	if (zone->uz_max_items > 0) {
		FUNC0(zone);
		zone->uz_items--;
		if (zone->uz_sleepers > 0 &&
		    zone->uz_items < zone->uz_max_items)
			FUNC9(zone);
		FUNC1(zone);
	}
}