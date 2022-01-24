#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dma_window {TYPE_1__* map; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int bus_size_t ;
struct TYPE_5__ {int ds_addr; scalar_t__ ds_len; } ;
typedef  TYPE_2__ bus_dma_segment_t ;
typedef  int bus_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  vmem; int /*<<< orphan*/  iobn; } ;

/* Variables and functions */
 int /*<<< orphan*/  H_PUT_TCE ; 
 int /*<<< orphan*/  H_STUFF_TCE ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 scalar_t__ papr_supports_stuff_tce ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

int
FUNC4(device_t dev, bus_dma_segment_t *segs, int nsegs, void *cookie)
{
	struct dma_window *window = cookie;
	bus_addr_t pageround;
	bus_size_t roundedsize;
	int i;
	bus_addr_t j;

	for (i = 0; i < nsegs; i++) {
		pageround = FUNC2(segs[i].ds_addr);
		roundedsize = FUNC1(segs[i].ds_len +
		    (segs[i].ds_addr & PAGE_MASK));

		if (papr_supports_stuff_tce) {
			FUNC0(H_STUFF_TCE, window->map->iobn, pageround, 0,
			    roundedsize/PAGE_SIZE);
		} else {
			for (j = 0; j < roundedsize; j += PAGE_SIZE)
				FUNC0(H_PUT_TCE, window->map->iobn,
				    pageround + j, 0);
		}

		FUNC3(window->map->vmem, pageround, roundedsize);
	}

	return (0);
}