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
struct iommu_state {int dummy; } ;
struct bus_dmamap_res {scalar_t__ dr_used; } ;
typedef  int /*<<< orphan*/  bus_size_t ;
typedef  TYPE_1__* bus_dmamap_t ;
struct TYPE_5__ {int /*<<< orphan*/  dm_reslist; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bus_dmamap_res*) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_state*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct bus_dmamap_res* FUNC3 (int /*<<< orphan*/ *) ; 
 struct bus_dmamap_res* FUNC4 (struct bus_dmamap_res*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dr_link ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct bus_dmamap_res*) ; 
 int /*<<< orphan*/  FUNC6 (struct iommu_state*,TYPE_1__*) ; 

__attribute__((used)) static bus_size_t
FUNC7(struct iommu_state *is, bus_dmamap_t map)
{
	struct bus_dmamap_res *r, *n;
	bus_size_t freed = 0;

	FUNC1(is);
	for (r = FUNC3(&map->dm_reslist); r != NULL; r = n) {
		n = FUNC4(r, dr_link);
		if (r->dr_used == 0) {
			freed += FUNC0(r);
			FUNC5(map, r);
		}
	}
	if (FUNC2(&map->dm_reslist))
		FUNC6(is, map);
	return (freed);
}