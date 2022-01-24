#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bus_dmamap {int /*<<< orphan*/  callback_arg; int /*<<< orphan*/  callback; int /*<<< orphan*/  mem; TYPE_1__* dmat; } ;
typedef  TYPE_1__* bus_dma_tag_t ;
struct TYPE_3__ {int /*<<< orphan*/  lockfuncarg; int /*<<< orphan*/  (* lockfunc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_LOCK ; 
 int /*<<< orphan*/  BUS_DMA_UNLOCK ; 
 int /*<<< orphan*/  BUS_DMA_WAITOK ; 
 struct bus_dmamap* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bounce_lock ; 
 int /*<<< orphan*/  bounce_map_callbacklist ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct bus_dmamap*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(void)
{
	bus_dma_tag_t dmat;
	struct bus_dmamap *map;

	FUNC3(&bounce_lock);
	while ((map = FUNC0(&bounce_map_callbacklist)) != NULL) {
		FUNC1(&bounce_map_callbacklist, links);
		FUNC4(&bounce_lock);
		dmat = map->dmat;
		(dmat->lockfunc)(dmat->lockfuncarg, BUS_DMA_LOCK);
		FUNC2(map->dmat, map, &map->mem,
				    map->callback, map->callback_arg,
				    BUS_DMA_WAITOK);
		(dmat->lockfunc)(dmat->lockfuncarg, BUS_DMA_UNLOCK);
		FUNC3(&bounce_lock);
	}
	FUNC4(&bounce_lock);
}