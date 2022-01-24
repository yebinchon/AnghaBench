#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct iommu_state {int /*<<< orphan*/  is_maplruq; } ;
typedef  TYPE_1__* bus_dmamap_t ;
struct TYPE_5__ {int dm_onq; int /*<<< orphan*/  dm_reslist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iommu_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dm_maplruq ; 

__attribute__((used)) static __inline void
FUNC4(struct iommu_state *is, bus_dmamap_t map)
{

	FUNC0(is);
	if (!FUNC1(&map->dm_reslist)) {
		if (map->dm_onq)
			FUNC3(&is->is_maplruq, map, dm_maplruq);
		FUNC2(&is->is_maplruq, map, dm_maplruq);
		map->dm_onq = 1;
	}
}