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
typedef  int /*<<< orphan*/ ***** vm_page_t ;
typedef  scalar_t__ vm_paddr_t ;
struct vm_page {int dummy; } ;
struct bus_dmamap_dmar {scalar_t__ cansleep; } ;
struct bus_dma_tag_dmar {int dummy; } ;
typedef  int /*<<< orphan*/  bus_size_t ;
typedef  scalar_t__ bus_dmamap_t ;
typedef  scalar_t__ bus_dma_tag_t ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ PAGE_MASK ; 
 int /*<<< orphan*/ ******* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  VM_MEMATTR_DEFAULT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *****) ; 
 int FUNC3 (struct bus_dma_tag_dmar*,struct bus_dmamap_dmar*,int /*<<< orphan*/ ******,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ******,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *****,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(bus_dma_tag_t dmat, bus_dmamap_t map1,
    vm_paddr_t buf, bus_size_t buflen, int flags, bus_dma_segment_t *segs,
    int *segp)
{
	struct bus_dma_tag_dmar *tag;
	struct bus_dmamap_dmar *map;
	vm_page_t *ma, fma;
	vm_paddr_t pstart, pend, paddr;
	int error, i, ma_cnt, mflags, offset;

	tag = (struct bus_dma_tag_dmar *)dmat;
	map = (struct bus_dmamap_dmar *)map1;
	pstart = FUNC8(buf);
	pend = FUNC7(buf + buflen);
	offset = buf & PAGE_MASK;
	ma_cnt = FUNC0(pend - pstart);
	mflags = map->cansleep ? M_WAITOK : M_NOWAIT;
	ma = FUNC5(sizeof(vm_page_t) * ma_cnt, M_DEVBUF, mflags);
	if (ma == NULL)
		return (ENOMEM);
	fma = NULL;
	for (i = 0; i < ma_cnt; i++) {
		paddr = pstart + FUNC6(i);
		ma[i] = FUNC1(paddr);
		if (ma[i] == NULL || FUNC2(ma[i]) != paddr) {
			/*
			 * If PHYS_TO_VM_PAGE() returned NULL or the
			 * vm_page was not initialized we'll use a
			 * fake page.
			 */
			if (fma == NULL) {
				fma = FUNC5(sizeof(struct vm_page) * ma_cnt,
				    M_DEVBUF, M_ZERO | mflags);
				if (fma == NULL) {
					FUNC4(ma, M_DEVBUF);
					return (ENOMEM);
				}
			}
			FUNC9(&fma[i], pstart + FUNC6(i),
			    VM_MEMATTR_DEFAULT);
			ma[i] = &fma[i];
		}
	}
	error = FUNC3(tag, map, ma, offset, buflen,
	    flags, segs, segp);
	FUNC4(&fma, M_DEVBUF);
	FUNC4(ma, M_DEVBUF);
	return (error);
}