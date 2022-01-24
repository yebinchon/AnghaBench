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
struct bounce_page {int dummy; } ;
typedef  TYPE_1__* bus_dmamap_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;
struct TYPE_3__ {scalar_t__ sync_count; int /*<<< orphan*/  bpages; } ;

/* Variables and functions */
 struct bounce_page* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bounce_page*) ; 
 int /*<<< orphan*/  links ; 

void
FUNC3(bus_dma_tag_t dmat, bus_dmamap_t map)
{
	struct bounce_page *bpage;

	while ((bpage = FUNC0(&map->bpages)) != NULL) {
		FUNC1(&map->bpages, links);
		FUNC2(dmat, bpage);
	}
	map->sync_count = 0;
	return;
}