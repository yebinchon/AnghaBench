#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uma_zone_t ;
struct TYPE_16__ {scalar_t__ uz_max_items; scalar_t__ uz_items; scalar_t__ uz_sleepers; int (* uz_import ) (int /*<<< orphan*/ ,void**,int,int,int) ;scalar_t__ (* uz_init ) (void*,int /*<<< orphan*/ ,int) ;scalar_t__ (* uz_ctor ) (void*,int /*<<< orphan*/ ,void*,int) ;scalar_t__ uz_dtor; int /*<<< orphan*/  uz_name; int /*<<< orphan*/  uz_fails; int /*<<< orphan*/  uz_allocs; int /*<<< orphan*/  uz_size; int /*<<< orphan*/  uz_arg; int /*<<< orphan*/  uz_lockptr; int /*<<< orphan*/  uz_sleeps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,void*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  KTR_UMA ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PVM ; 
 int SKIP_CNT ; 
 int SKIP_DTOR ; 
 int SKIP_FINI ; 
 int UMA_ANYDOMAIN ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,void**,int,int,int) ; 
 scalar_t__ FUNC9 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (void*,int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC11 (void*,int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ trash_dtor ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *,void*) ; 
 int FUNC13 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC14 (void*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,void*,void*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 

__attribute__((used)) static void *
FUNC19(uma_zone_t zone, void *udata, int domain, int flags)
{
	void *item;
#ifdef INVARIANTS
	bool skipdbg;
#endif

	FUNC4(zone);

	if (zone->uz_max_items > 0) {
		if (zone->uz_items >= zone->uz_max_items) {
			FUNC17(zone);
			FUNC18(zone);
			if (flags & M_NOWAIT) {
				FUNC5(zone);
				return (NULL);
			}
			zone->uz_sleeps++;
			zone->uz_sleepers++;
			while (zone->uz_items >= zone->uz_max_items)
				FUNC7(zone, zone->uz_lockptr, PVM,
				    "zonelimit", 0);
			zone->uz_sleepers--;
			if (zone->uz_sleepers > 0 &&
			    zone->uz_items + 1 < zone->uz_max_items)
				FUNC15(zone);
		}
		zone->uz_items++;
	}
	FUNC5(zone);

	/* Avoid allocs targeting empty domains. */
	if (domain != UMA_ANYDOMAIN && FUNC2(domain))
		domain = UMA_ANYDOMAIN;

	if (zone->uz_import(zone->uz_arg, &item, 1, domain, flags) != 1)
		goto fail;

#ifdef INVARIANTS
	skipdbg = uma_dbg_zskip(zone, item);
#endif
	/*
	 * We have to call both the zone's init (not the keg's init)
	 * and the zone's ctor.  This is because the item is going from
	 * a keg slab directly to the user, and the user is expecting it
	 * to be both zone-init'd as well as zone-ctor'd.
	 */
	if (zone->uz_init != NULL) {
		if (zone->uz_init(item, zone->uz_size, flags) != 0) {
			FUNC16(zone, item, udata, SKIP_FINI | SKIP_CNT);
			goto fail;
		}
	}
	if (zone->uz_ctor != NULL &&
#ifdef INVARIANTS
	    (!skipdbg || zone->uz_ctor != trash_ctor ||
	    zone->uz_dtor != trash_dtor) &&
#endif
	    zone->uz_ctor(item, zone->uz_size, udata, flags) != 0) {
		FUNC16(zone, item, udata, SKIP_DTOR | SKIP_CNT);
		goto fail;
	}
#ifdef INVARIANTS
	if (!skipdbg)
		uma_dbg_alloc(zone, NULL, item);
#endif
	if (flags & M_ZERO)
		FUNC14(item, zone);

	FUNC6(zone->uz_allocs, 1);
	FUNC1(KTR_UMA, "zone_alloc_item item %p from %s(%p)", item,
	    zone->uz_name, zone);

	return (item);

fail:
	if (zone->uz_max_items > 0) {
		FUNC3(zone);
		zone->uz_items--;
		FUNC5(zone);
	}
	FUNC6(zone->uz_fails, 1);
	FUNC0(KTR_UMA, "zone_alloc_item failed from %s(%p)",
	    zone->uz_name, zone);
	return (NULL);
}