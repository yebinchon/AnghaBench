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
struct mem_region {scalar_t__ mr_size; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mem_region*,int*,struct mem_region*,int*) ; 
 int TRUE ; 
 struct mem_region* aregions ; 
 int /*<<< orphan*/  FUNC1 (struct mem_region*,struct mem_region*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_region*,struct mem_region*) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_region*,struct mem_region*) ; 
 int /*<<< orphan*/  mr_cmp ; 
 int naregions ; 
 int npregions ; 
 int /*<<< orphan*/  plat_obj ; 
 struct mem_region* pregions ; 
 int /*<<< orphan*/  FUNC4 (struct mem_region*,int,int,int /*<<< orphan*/ ) ; 

void
FUNC5(struct mem_region **phys, int *physsz, struct mem_region **avail,
    int *availsz)
{
	int i, j, still_merging;

	if (npregions == 0) {
		FUNC0(plat_obj, pregions, &npregions,
		    aregions, &naregions);
		FUNC4(pregions, npregions, sizeof(*pregions), mr_cmp);
		FUNC4(aregions, naregions, sizeof(*aregions), mr_cmp);

		/* Remove overlapping available regions */
		do {
			still_merging = FALSE;
			for (i = 0; i < naregions; i++) {
				if (aregions[i].mr_size == 0)
					continue;
				for (j = i+1; j < naregions; j++) {
					if (aregions[j].mr_size == 0)
						continue;
					if (!FUNC3(&aregions[j],
					    &aregions[i]))
						continue;

					FUNC2(&aregions[j], &aregions[i]);
					/* mark inactive */
					aregions[j].mr_size = 0;
					still_merging = TRUE;
				}
			}
		} while (still_merging == TRUE);

		/* Collapse zero-length available regions */
		for (i = 0; i < naregions; i++) {
			if (aregions[i].mr_size == 0) {
				FUNC1(&aregions[i], &aregions[i+1],
				    (naregions - i - 1)*sizeof(*aregions));
				naregions--;
				i--;
			}
		}
	}

	if (phys != NULL)
		*phys = pregions;
	if (avail != NULL)
		*avail = aregions;
	if (physsz != NULL)
		*physsz = npregions;
	if (availsz != NULL)
		*availsz = naregions;
}