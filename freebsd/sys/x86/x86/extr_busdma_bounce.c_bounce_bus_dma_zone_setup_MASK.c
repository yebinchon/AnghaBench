#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct bounce_zone {int total_bpages; } ;
typedef  TYPE_2__* bus_dma_tag_t ;
struct TYPE_6__ {scalar_t__ maxsize; } ;
struct TYPE_7__ {int /*<<< orphan*/  bounce_flags; TYPE_1__ common; struct bounce_zone* bounce_zone; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_MIN_ALLOC_COMP ; 
 int ENOMEM ; 
 int FUNC0 (TYPE_2__*,int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(bus_dma_tag_t dmat)
{
	struct bounce_zone *bz;
	int error;

	/* Must bounce */
	if ((error = FUNC1(dmat)) != 0)
		return (error);
	bz = dmat->bounce_zone;

	if (FUNC3(bz->total_bpages) < dmat->common.maxsize) {
		int pages;

		pages = FUNC2(dmat->common.maxsize) - bz->total_bpages;

		/* Add pages to our bounce pool */
		if (FUNC0(dmat, pages) < pages)
			return (ENOMEM);
	}
	/* Performed initial allocation */
	dmat->bounce_flags |= BUS_DMA_MIN_ALLOC_COMP;

	return (0);
}