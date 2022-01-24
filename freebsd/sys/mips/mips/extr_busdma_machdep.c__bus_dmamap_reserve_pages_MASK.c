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
typedef  int /*<<< orphan*/  bus_dmamap_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;

/* Variables and functions */
 int BUS_DMA_NOWAIT ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bounce_lock ; 
 int /*<<< orphan*/  bounce_map_waitinglist ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(bus_dma_tag_t dmat, bus_dmamap_t map,int flags)
{

	/* Reserve Necessary Bounce Pages */
	FUNC1(&bounce_lock);
	if (flags & BUS_DMA_NOWAIT) {
		if (FUNC3(dmat, map, 0) != 0) {
			FUNC2(&bounce_lock);
			return (ENOMEM);
		}
	} else {
		if (FUNC3(dmat, map, 1) != 0) {
			/* Queue us for resources */
			FUNC0(&bounce_map_waitinglist,
			    map, links);
			FUNC2(&bounce_lock);
			return (EINPROGRESS);
		}
	}
	FUNC2(&bounce_lock);

	return (0);
}