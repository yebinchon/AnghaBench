#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct iommu_state {int dummy; } ;
typedef  TYPE_1__* bus_dmamap_t ;
typedef  TYPE_2__* bus_dma_tag_t ;
struct TYPE_13__ {int /*<<< orphan*/  dt_maxsize; struct iommu_state* dt_cookie; } ;
struct TYPE_12__ {int /*<<< orphan*/  dm_flags; } ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_NOWAIT ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  DMF_COHERENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu_state*) ; 
 int /*<<< orphan*/  M_IOMMU ; 
 int M_NOWAIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct iommu_state*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu_state*,TYPE_1__*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (TYPE_2__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC8(bus_dma_tag_t dt, void **vaddr, int flags,
    bus_dmamap_t *mapp)
{
	struct iommu_state *is = dt->dt_cookie;
	int error, mflags;

	/*
	 * XXX: This will break for 32 bit transfers on machines with more
	 * than is->is_pmaxaddr memory.
	 */
	if ((error = FUNC6(dt, mapp)) != 0)
		return (error);

	if ((flags & BUS_DMA_NOWAIT) != 0)
		mflags = M_NOWAIT;
	else
		mflags = M_WAITOK;
	if ((flags & BUS_DMA_ZERO) != 0)
		mflags |= M_ZERO;

	if ((*vaddr = FUNC5(dt->dt_maxsize, M_IOMMU, mflags)) == NULL) {
		error = ENOMEM;
		FUNC7(dt, *mapp);
		return (error);
	}
	if ((flags & BUS_DMA_COHERENT) != 0)
		(*mapp)->dm_flags |= DMF_COHERENT;
	/*
	 * Try to preallocate DVMA space.  If this fails, it is retried at
	 * load time.
	 */
	FUNC3(dt, is, *mapp, FUNC0(dt->dt_maxsize));
	FUNC1(is);
	FUNC4(is, *mapp);
	FUNC2(is);
	return (0);
}