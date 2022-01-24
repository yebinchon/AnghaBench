#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint64_t ;
struct dmar_unit {int hw_cap; int /*<<< orphan*/  unit; int /*<<< orphan*/  hw_ecap; int /*<<< orphan*/  qi_enabled; } ;
struct dmar_domain {int /*<<< orphan*/  domain; struct dmar_unit* dmar; } ;
typedef  int dmar_gaddr_t ;

/* Variables and functions */
 int DMAR_CAP_PSI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int DMAR_IOTLB_IAIG_INVLD ; 
 int DMAR_IOTLB_IAIG_MASK ; 
 int DMAR_IOTLB_IAIG_PAGE ; 
 int DMAR_IOTLB_IIRG_DOM ; 
 int DMAR_IOTLB_IIRG_PAGE ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 (struct dmar_unit*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct dmar_unit*,int,int) ; 
 int FUNC7 (struct dmar_unit*,int,int) ; 

void
FUNC8(struct dmar_domain *domain, dmar_gaddr_t base,
    dmar_gaddr_t size)
{
	struct dmar_unit *unit;
	dmar_gaddr_t isize;
	uint64_t iotlbr;
	int am, iro;

	unit = domain->dmar;
	FUNC4(!unit->qi_enabled, ("dmar%d: sync iotlb flush call",
	    unit->unit));
	iro = FUNC0(unit->hw_ecap) * 16;
	FUNC2(unit);
	if ((unit->hw_cap & DMAR_CAP_PSI) == 0 || size > 2 * 1024 * 1024) {
		iotlbr = FUNC7(unit, DMAR_IOTLB_IIRG_DOM |
		    FUNC1(domain->domain), iro);
		FUNC4((iotlbr & DMAR_IOTLB_IAIG_MASK) !=
		    DMAR_IOTLB_IAIG_INVLD,
		    ("dmar%d: invalidation failed %jx", unit->unit,
		    (uintmax_t)iotlbr));
	} else {
		for (; size > 0; base += isize, size -= isize) {
			am = FUNC5(unit, base, size, &isize);
			FUNC6(unit, iro, base | am);
			iotlbr = FUNC7(unit,
			    DMAR_IOTLB_IIRG_PAGE |
			    FUNC1(domain->domain), iro);
			FUNC4((iotlbr & DMAR_IOTLB_IAIG_MASK) !=
			    DMAR_IOTLB_IAIG_INVLD,
			    ("dmar%d: PSI invalidation failed "
			    "iotlbr 0x%jx base 0x%jx size 0x%jx am %d",
			    unit->unit, (uintmax_t)iotlbr,
			    (uintmax_t)base, (uintmax_t)size, am));
			/*
			 * Any non-page granularity covers whole guest
			 * address space for the domain.
			 */
			if ((iotlbr & DMAR_IOTLB_IAIG_MASK) !=
			    DMAR_IOTLB_IAIG_PAGE)
				break;
		}
	}
	FUNC3(unit);
}