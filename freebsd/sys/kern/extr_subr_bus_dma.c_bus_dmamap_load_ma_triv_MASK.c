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
typedef  scalar_t__ vm_paddr_t ;
struct vm_page {int dummy; } ;
typedef  scalar_t__ bus_size_t ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct vm_page*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 

int
FUNC3(bus_dma_tag_t dmat, bus_dmamap_t map,
    struct vm_page **ma, bus_size_t tlen, int ma_offs, int flags,
    bus_dma_segment_t *segs, int *segp)
{
	vm_paddr_t paddr;
	bus_size_t len;
	int error, i;

	error = 0;
	for (i = 0; tlen > 0; i++, tlen -= len) {
		len = FUNC2(PAGE_SIZE - ma_offs, tlen);
		paddr = FUNC0(ma[i]) + ma_offs;
		error = FUNC1(dmat, map, paddr, len,
		    flags, segs, segp);
		if (error != 0)
			break;
		ma_offs = 0;
	}
	return (error);
}