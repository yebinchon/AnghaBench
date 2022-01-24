#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  segs ;
typedef  TYPE_1__* bus_dmamap_t ;
typedef  TYPE_2__* bus_dma_tag_t ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;
struct TYPE_6__ {int /*<<< orphan*/  iommu_cookie; int /*<<< orphan*/  boundary; int /*<<< orphan*/  alignment; int /*<<< orphan*/  highaddr; int /*<<< orphan*/  lowaddr; int /*<<< orphan*/ * iommu; } ;
struct TYPE_5__ {int nsegs; int /*<<< orphan*/ * segments; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

bus_dma_segment_t *
FUNC2(bus_dma_tag_t dmat, bus_dmamap_t map,
		     bus_dma_segment_t *segs, int nsegs, int error)
{

	map->nsegs = nsegs;
	if (segs != NULL)
		FUNC1(map->segments, segs, map->nsegs*sizeof(segs[0]));
	if (dmat->iommu != NULL)
		FUNC0(dmat->iommu, map->segments, &map->nsegs,
		    dmat->lowaddr, dmat->highaddr, dmat->alignment,
		    dmat->boundary, dmat->iommu_cookie);

	if (segs != NULL)
		FUNC1(segs, map->segments, map->nsegs*sizeof(segs[0]));
	else
		segs = map->segments;

	return (segs);
}