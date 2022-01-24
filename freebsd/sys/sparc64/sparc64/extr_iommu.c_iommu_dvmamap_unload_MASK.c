#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct iommu_state {int dummy; } ;
typedef  TYPE_1__* bus_dmamap_t ;
typedef  TYPE_2__* bus_dma_tag_t ;
struct TYPE_8__ {struct iommu_state* dt_cookie; } ;
struct TYPE_7__ {int dm_flags; } ;

/* Variables and functions */
 int DMF_LOADED ; 
 int /*<<< orphan*/  FUNC0 (struct iommu_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu_state*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct iommu_state*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(bus_dma_tag_t dt, bus_dmamap_t map)
{
	struct iommu_state *is = dt->dt_cookie;

	if ((map->dm_flags & DMF_LOADED) == 0)
		return;
	FUNC0(is);
	FUNC2(is, map);
	FUNC3(is, map);
	FUNC1(is);
	map->dm_flags &= ~DMF_LOADED;
}