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
typedef  int /*<<< orphan*/  uint64_t ;
struct mem_region {int mr_size; scalar_t__ mr_start; } ;
typedef  int /*<<< orphan*/  platform_t ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mem_region*,int*,struct mem_region*,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(platform_t plat, struct mem_region *phys, int *physsz,
    struct mem_region *avail_regions, int *availsz)
{
	uint64_t lpar_id, junk;
	int i;

	/* Prefer device tree information if available */
	if (FUNC0("/") != -1) {
		FUNC5(phys, physsz, avail_regions, availsz);
	} else {
		/* Real mode memory region is first segment */
		phys[0].mr_start = 0;
		phys[0].mr_size = FUNC6(plat);
		*physsz = *availsz = 1;
		avail_regions[0] = phys[0];
	}

	/* Now get extended memory region */
	FUNC2(&lpar_id);
	FUNC3(lpar_id,
	    FUNC4("bi") >> 32,
	    FUNC4("rgntotal"), 0, 0,
	    &phys[*physsz].mr_size, &junk);
	for (i = 0; i < *physsz; i++)
		phys[*physsz].mr_size -= phys[i].mr_size;

	/* Convert to maximum amount we can allocate in 16 MB pages */
	phys[*physsz].mr_size -= phys[*physsz].mr_size % (16*1024*1024);

	/* Allocate extended memory region */
	FUNC1(phys[*physsz].mr_size, 24 /* 16 MB pages */,
	    0, 0x04 /* any address */, &phys[*physsz].mr_start, &junk);
	avail_regions[*availsz] = phys[*physsz];
	(*physsz)++;
	(*availsz)++;
}