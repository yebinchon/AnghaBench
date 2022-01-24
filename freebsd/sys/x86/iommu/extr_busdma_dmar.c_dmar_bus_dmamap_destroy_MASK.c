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
struct dmar_domain {int dummy; } ;
struct bus_dmamap_dmar {int /*<<< orphan*/  map_entries; } ;
struct bus_dma_tag_dmar {int /*<<< orphan*/  map_count; TYPE_1__* ctx; } ;
typedef  scalar_t__ bus_dmamap_t ;
typedef  scalar_t__ bus_dma_tag_t ;
struct TYPE_2__ {struct dmar_domain* domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_domain*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  M_DMAR_DMAMAP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bus_dmamap_dmar*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(bus_dma_tag_t dmat, bus_dmamap_t map1)
{
	struct bus_dma_tag_dmar *tag;
	struct bus_dmamap_dmar *map;
	struct dmar_domain *domain;

	tag = (struct bus_dma_tag_dmar *)dmat;
	map = (struct bus_dmamap_dmar *)map1;
	if (map != NULL) {
		domain = tag->ctx->domain;
		FUNC0(domain);
		if (!FUNC2(&map->map_entries)) {
			FUNC1(domain);
			return (EBUSY);
		}
		FUNC1(domain);
		FUNC3(map, M_DMAR_DMAMAP);
	}
	tag->map_count--;
	return (0);
}