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
struct sync_list {int dummy; } ;
typedef  TYPE_1__* bus_dmamap_t ;
typedef  TYPE_2__* bus_dma_tag_t ;
struct TYPE_8__ {int nsegments; } ;
struct TYPE_7__ {struct sync_list* slist; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_BUSDMA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  dmamap_zone ; 
 int /*<<< orphan*/  FUNC0 (struct sync_list*,int /*<<< orphan*/ ) ; 
 struct sync_list* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline bus_dmamap_t
FUNC3(bus_dma_tag_t dmat)
{
	struct sync_list *slist;
	bus_dmamap_t map;

	slist = FUNC1(sizeof(*slist) * dmat->nsegments, M_BUSDMA, M_NOWAIT);
	if (slist == NULL)
		return (NULL);
	map = FUNC2(dmamap_zone, dmat, M_NOWAIT);
	if (map != NULL)
		map->slist = slist;
	else
		FUNC0(slist, M_BUSDMA);
	return (map);
}