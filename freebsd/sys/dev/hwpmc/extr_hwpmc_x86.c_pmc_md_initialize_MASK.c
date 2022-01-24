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
struct pmc_mdep {int pmd_nclass; TYPE_1__* pmd_classdep; } ;
struct TYPE_2__ {int /*<<< orphan*/  pcd_caps; } ;

/* Variables and functions */
 scalar_t__ CPU_VENDOR_AMD ; 
 scalar_t__ CPU_VENDOR_INTEL ; 
 int /*<<< orphan*/  PMC_CAP_INTERRUPT ; 
 int PMC_CLASS_INDEX_SOFT ; 
 scalar_t__ cpu_vendor_id ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct pmc_mdep* FUNC1 () ; 
 struct pmc_mdep* FUNC2 () ; 

struct pmc_mdep *
FUNC3()
{
	int i;
	struct pmc_mdep *md;

	/* determine the CPU kind */
	if (cpu_vendor_id == CPU_VENDOR_AMD)
		md = FUNC1();
	else if (cpu_vendor_id == CPU_VENDOR_INTEL)
		md = FUNC2();
	else
		return (NULL);

	/* disallow sampling if we do not have an LAPIC */
	if (md != NULL && !FUNC0())
		for (i = 0; i < md->pmd_nclass; i++) {
			if (i == PMC_CLASS_INDEX_SOFT)
				continue;
			md->pmd_classdep[i].pcd_caps &= ~PMC_CAP_INTERRUPT;
		}

	return (md);
}