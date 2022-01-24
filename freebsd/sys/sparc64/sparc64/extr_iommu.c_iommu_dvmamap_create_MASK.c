#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct iommu_state {int dummy; } ;
typedef  scalar_t__ bus_size_t ;
typedef  TYPE_1__* bus_dmamap_t ;
typedef  TYPE_2__* bus_dma_tag_t ;
struct TYPE_11__ {int dt_maxsize; int /*<<< orphan*/  dt_nsegments; struct iommu_state* dt_cookie; } ;
struct TYPE_10__ {int /*<<< orphan*/  dm_flags; } ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int /*<<< orphan*/  DMF_COHERENT ; 
 scalar_t__ IOMMU_MAX_PRE ; 
 int /*<<< orphan*/  IOMMU_MAX_PRE_SEG ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu_state*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,struct iommu_state*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct iommu_state*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (TYPE_2__*,TYPE_1__**) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC9(bus_dma_tag_t dt, int flags, bus_dmamap_t *mapp)
{
	struct iommu_state *is = dt->dt_cookie;
	bus_size_t totsz, presz, currsz;
	int error, i, maxpre;

	if ((error = FUNC7(dt, mapp)) != 0)
		return (error);
	if ((flags & BUS_DMA_COHERENT) != 0)
		(*mapp)->dm_flags |= DMF_COHERENT;
	/*
	 * Preallocate DVMA space; if this fails now, it is retried at load
	 * time.  Through bus_dmamap_load_mbuf() and bus_dmamap_load_uio(),
	 * it is possible to have multiple discontiguous segments in a single
	 * map, which is handled by allocating additional resources, instead
	 * of increasing the size, to avoid fragmentation.
	 * Clamp preallocation to IOMMU_MAX_PRE.  In some situations we can
	 * handle more; that case is handled by reallocating at map load time.
	 */
	totsz = FUNC8(FUNC0(dt->dt_maxsize), IOMMU_MAX_PRE);
	error = FUNC4(dt, is, *mapp, totsz);
	if (error != 0)
		return (0);
	/*
	 * Try to be smart about preallocating some additional segments if
	 * needed.
	 */
	maxpre = FUNC3(dt->dt_nsegments, IOMMU_MAX_PRE_SEG);
	presz = dt->dt_maxsize / maxpre;
	for (i = 1; i < maxpre && totsz < IOMMU_MAX_PRE; i++) {
		currsz = FUNC6(FUNC8(presz, IOMMU_MAX_PRE - totsz));
		error = FUNC4(dt, is, *mapp, currsz);
		if (error != 0)
			break;
		totsz += currsz;
	}
	FUNC1(is);
	FUNC5(is, *mapp);
	FUNC2(is);
	return (0);
}