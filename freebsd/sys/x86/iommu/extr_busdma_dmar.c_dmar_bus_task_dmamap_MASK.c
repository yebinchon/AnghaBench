#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dmar_unit {int /*<<< orphan*/  delayed_maps; } ;
struct bus_dmamap_dmar {int cansleep; int locked; int /*<<< orphan*/  callback_arg; int /*<<< orphan*/  callback; int /*<<< orphan*/  mem; struct bus_dma_tag_dmar* tag; } ;
struct TYPE_2__ {int /*<<< orphan*/  lockfuncarg; int /*<<< orphan*/  (* lockfunc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct bus_dma_tag_dmar {TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_UNLOCK ; 
 int /*<<< orphan*/  BUS_DMA_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*) ; 
 struct bus_dmamap_dmar* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bus_dmamap_dmar*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  delay_link ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void *arg, int pending)
{
	struct bus_dma_tag_dmar *tag;
	struct bus_dmamap_dmar *map;
	struct dmar_unit *unit;

	unit = arg;
	FUNC0(unit);
	while ((map = FUNC2(&unit->delayed_maps)) != NULL) {
		FUNC3(&unit->delayed_maps, map, delay_link);
		FUNC1(unit);
		tag = map->tag;
		map->cansleep = true;
		map->locked = false;
		FUNC4((bus_dma_tag_t)tag, (bus_dmamap_t)map,
		    &map->mem, map->callback, map->callback_arg,
		    BUS_DMA_WAITOK);
		map->cansleep = false;
		if (map->locked) {
			(tag->common.lockfunc)(tag->common.lockfuncarg,
			    BUS_DMA_UNLOCK);
		} else
			map->locked = true;
		map->cansleep = false;
		FUNC0(unit);
	}
	FUNC1(unit);
}