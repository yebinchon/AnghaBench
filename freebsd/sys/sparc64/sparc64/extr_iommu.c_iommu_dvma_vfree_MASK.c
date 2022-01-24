#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct iommu_state {int dummy; } ;
typedef  TYPE_1__* bus_dmamap_t ;
struct TYPE_6__ {int /*<<< orphan*/  dm_reslist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iommu_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iommu_state*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct iommu_state*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(struct iommu_state *is, bus_dmamap_t map)
{

	FUNC0(is);
	FUNC6(is, map);
	FUNC5(is, map);
	FUNC1(is);
	while (!FUNC2(&map->dm_reslist))
		FUNC4(map, FUNC3(&map->dm_reslist));
}