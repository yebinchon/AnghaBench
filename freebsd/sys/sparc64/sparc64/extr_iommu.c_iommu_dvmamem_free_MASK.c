#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iommu_state {int dummy; } ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;
typedef  TYPE_1__* bus_dma_tag_t ;
struct TYPE_4__ {struct iommu_state* dt_cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_IOMMU ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(bus_dma_tag_t dt, void *vaddr, bus_dmamap_t map)
{
	struct iommu_state *is = dt->dt_cookie;

	FUNC1(is, map);
	FUNC2(dt, map);
	FUNC0(vaddr, M_IOMMU);
}