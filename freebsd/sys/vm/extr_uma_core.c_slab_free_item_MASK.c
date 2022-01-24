#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uma_zone_t ;
typedef  TYPE_2__* uma_slab_t ;
typedef  TYPE_3__* uma_keg_t ;
typedef  TYPE_4__* uma_domain_t ;
typedef  uintptr_t uint8_t ;
struct TYPE_13__ {int /*<<< orphan*/  ud_part_slab; int /*<<< orphan*/  ud_free_slab; } ;
struct TYPE_12__ {scalar_t__ uk_ipers; uintptr_t uk_rsize; int /*<<< orphan*/  uk_free; TYPE_4__* uk_domain; int /*<<< orphan*/  uk_lock; } ;
struct TYPE_11__ {size_t us_domain; scalar_t__ us_freecount; int /*<<< orphan*/  us_free; scalar_t__ us_data; TYPE_3__* us_keg; } ;
struct TYPE_10__ {int /*<<< orphan*/ * uz_lockptr; TYPE_3__* uz_keg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,uintptr_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  SLAB_SETSIZE ; 
 int /*<<< orphan*/  us_link ; 

__attribute__((used)) static void
FUNC5(uma_zone_t zone, uma_slab_t slab, void *item)
{
	uma_keg_t keg;
	uma_domain_t dom;
	uint8_t freei;

	keg = zone->uz_keg;
	FUNC4(zone->uz_lockptr == &keg->uk_lock);
	FUNC1(keg);
	FUNC4(keg == slab->us_keg);

	dom = &keg->uk_domain[slab->us_domain];

	/* Do we need to remove from any lists? */
	if (slab->us_freecount+1 == keg->uk_ipers) {
		FUNC3(slab, us_link);
		FUNC2(&dom->ud_free_slab, slab, us_link);
	} else if (slab->us_freecount == 0) {
		FUNC3(slab, us_link);
		FUNC2(&dom->ud_part_slab, slab, us_link);
	}

	/* Slab management. */
	freei = ((uintptr_t)item - (uintptr_t)slab->us_data) / keg->uk_rsize;
	FUNC0(SLAB_SETSIZE, freei, &slab->us_free);
	slab->us_freecount++;

	/* Keg statistics. */
	keg->uk_free++;
}