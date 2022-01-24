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
typedef  int uint64_t ;
struct dma_window {scalar_t__ start; scalar_t__ end; TYPE_1__* map; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ bus_size_t ;
struct TYPE_5__ {scalar_t__ ds_len; scalar_t__ ds_addr; } ;
typedef  TYPE_2__ bus_dma_segment_t ;
typedef  scalar_t__ bus_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  iobn; int /*<<< orphan*/  vmem; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  H_PUT_TCE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int M_BESTFIT ; 
 int M_NOWAIT ; 
 scalar_t__ PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__*) ; 

int
FUNC6(device_t dev, bus_dma_segment_t *segs, int *nsegs,
    bus_addr_t min, bus_addr_t max, bus_size_t alignment, bus_addr_t boundary,
    void *cookie)
{
	struct dma_window *window = cookie;
	bus_addr_t minaddr, maxaddr;
	bus_addr_t alloced;
	bus_size_t allocsize;
	int error, i, j;
	uint64_t tce;
	minaddr = window->start;
	maxaddr = window->end;

	/* XXX: handle exclusion range in a more useful way */
	if (min < maxaddr)
		maxaddr = min;

	/* XXX: consolidate segs? */
	for (i = 0; i < *nsegs; i++) {
		allocsize = FUNC3(segs[i].ds_len +
		    (segs[i].ds_addr & PAGE_MASK));
		error = FUNC5(window->map->vmem, allocsize,
		    (alignment < PAGE_SIZE) ? PAGE_SIZE : alignment, 0,
		    boundary, minaddr, maxaddr, M_BESTFIT | M_NOWAIT, &alloced);
		if (error != 0) {
			FUNC1("VMEM failure: %d\n", error);
			return (error);
		}
		FUNC0(alloced % PAGE_SIZE == 0, ("Alloc not page aligned"));
		FUNC0((alloced + (segs[i].ds_addr & PAGE_MASK)) %
		    alignment == 0,
		    ("Allocated segment does not match alignment constraint"));

		tce = FUNC4(segs[i].ds_addr);
		tce |= 0x3; /* read/write */
		for (j = 0; j < allocsize; j += PAGE_SIZE) {
			error = FUNC2(H_PUT_TCE, window->map->iobn,
			    alloced + j, tce + j);
			if (error < 0) {
				FUNC1("IOMMU mapping error: %d\n", error);
				return (ENOMEM);
			}
		}

		segs[i].ds_addr = alloced + (segs[i].ds_addr & PAGE_MASK);
		FUNC0(segs[i].ds_addr > 0, ("Address needs to be positive"));
		FUNC0(segs[i].ds_addr + segs[i].ds_len < maxaddr,
		    ("Address not in range"));
		if (error < 0) {
			FUNC1("IOMMU mapping error: %d\n", error);
			return (ENOMEM);
		}
	}

	return (0);
}