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
struct TYPE_2__ {scalar_t__ end; scalar_t__ start; } ;

/* Variables and functions */
 TYPE_1__* mem_affinity ; 
 scalar_t__* phys_avail ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

void
FUNC4(void)
{
	int i;

	for (i = 0; phys_avail[i + 1] != 0; i += 2) {
		phys_avail[i] = FUNC0(phys_avail[i]);
		phys_avail[i + 1] = FUNC1(phys_avail[i + 1]);
	}

#ifdef NUMA
	/* Force phys_avail to be split by domain. */
	if (mem_affinity != NULL) {
		int idx;

		for (i = 0; mem_affinity[i].end != 0; i++) {
			idx = vm_phys_avail_find(mem_affinity[i].start);
			if (idx != -1 &&
			    phys_avail[idx] != mem_affinity[i].start)
				vm_phys_avail_split(mem_affinity[i].start, idx);
			idx = vm_phys_avail_find(mem_affinity[i].end);
			if (idx != -1 &&
			    phys_avail[idx] != mem_affinity[i].end)
				vm_phys_avail_split(mem_affinity[i].end, idx);
		}
	}
#endif
}