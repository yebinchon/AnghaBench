#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uma_zone_t ;
typedef  TYPE_2__* uma_slab_t ;
typedef  TYPE_3__* uma_keg_t ;
typedef  TYPE_4__* uma_domain_t ;
struct vm_domainset_iter {int dummy; } ;
struct TYPE_16__ {TYPE_1__* dr_policy; } ;
struct TYPE_15__ {int /*<<< orphan*/  ud_free_slab; } ;
struct TYPE_14__ {int uk_ipers; TYPE_5__ uk_dr; TYPE_4__* uk_domain; } ;
struct TYPE_13__ {size_t us_domain; TYPE_3__* us_keg; } ;
struct TYPE_12__ {int /*<<< orphan*/  ds_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 TYPE_2__* FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  us_link ; 
 scalar_t__ FUNC6 (struct vm_domainset_iter*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_domainset_iter*,TYPE_5__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(uma_zone_t zone, int items)
{
	struct vm_domainset_iter di;
	uma_domain_t dom;
	uma_slab_t slab;
	uma_keg_t keg;
	int aflags, domain, slabs;

	FUNC0(zone, keg);
	FUNC1(keg);
	slabs = items / keg->uk_ipers;
	if (slabs * keg->uk_ipers < items)
		slabs++;
	while (slabs-- > 0) {
		aflags = M_NOWAIT;
		FUNC7(&di, &keg->uk_dr, &domain,
		    &aflags);
		for (;;) {
			slab = FUNC5(keg, zone, domain, M_WAITOK,
			    aflags);
			if (slab != NULL) {
				FUNC4(slab->us_keg == keg);
				dom = &keg->uk_domain[slab->us_domain];
				FUNC3(&dom->ud_free_slab, slab,
				    us_link);
				break;
			}
			FUNC1(keg);
			if (FUNC6(&di, &domain) != 0) {
				FUNC2(keg);
				FUNC8(&keg->uk_dr.dr_policy->ds_mask);
				FUNC1(keg);
			}
		}
	}
	FUNC2(keg);
}