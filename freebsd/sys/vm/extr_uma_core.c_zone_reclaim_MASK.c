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
struct TYPE_8__ {int uz_flags; int /*<<< orphan*/  uz_keg; int /*<<< orphan*/  uz_lockptr; } ;

/* Variables and functions */
 int M_NOWAIT ; 
 int /*<<< orphan*/  PVM ; 
 int UMA_ZFLAG_CACHE ; 
 int UMA_ZFLAG_RECLAIMING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(uma_zone_t zone, int waitok, bool drain)
{

	/*
	 * Set draining to interlock with zone_dtor() so we can release our
	 * locks as we go.  Only dtor() should do a WAITOK call since it
	 * is the only call that knows the structure will still be available
	 * when it wakes up.
	 */
	FUNC0(zone);
	while (zone->uz_flags & UMA_ZFLAG_RECLAIMING) {
		if (waitok == M_NOWAIT)
			goto out;
		FUNC4(zone, zone->uz_lockptr, PVM, "zonedrain", 1);
	}
	zone->uz_flags |= UMA_ZFLAG_RECLAIMING;
	FUNC2(zone, drain);
	FUNC1(zone);

	/*
	 * The DRAINING flag protects us from being freed while
	 * we're running.  Normally the uma_rwlock would protect us but we
	 * must be able to release and acquire the right lock for each keg.
	 */
	if ((zone->uz_flags & UMA_ZFLAG_CACHE) == 0)
		FUNC3(zone->uz_keg);
	FUNC0(zone);
	zone->uz_flags &= ~UMA_ZFLAG_RECLAIMING;
	FUNC5(zone);
out:
	FUNC1(zone);
}