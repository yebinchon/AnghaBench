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
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ u_int ;
struct bounce_zone {int /*<<< orphan*/  free_bpages; int /*<<< orphan*/  total_bpages; int /*<<< orphan*/  bounce_page_list; int /*<<< orphan*/  lowaddr; } ;
struct bounce_page {scalar_t__ vaddr; int /*<<< orphan*/  busaddr; } ;
typedef  TYPE_2__* bus_dma_tag_t ;
struct TYPE_4__ {int /*<<< orphan*/  domain; } ;
struct TYPE_5__ {TYPE_1__ common; struct bounce_zone* bounce_zone; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bounce_page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bounce_lock ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bounce_page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 struct bounce_page* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  total_bpages ; 

__attribute__((used)) static int
FUNC8(bus_dma_tag_t dmat, u_int numpages)
{
	struct bounce_zone *bz;
	int count;

	bz = dmat->bounce_zone;
	count = 0;
	while (numpages > 0) {
		struct bounce_page *bpage;

		bpage = FUNC4(sizeof(*bpage), M_DEVBUF,
		    FUNC0(dmat->common.domain), M_NOWAIT | M_ZERO);

		if (bpage == NULL)
			break;
		bpage->vaddr = (vm_offset_t)FUNC2(PAGE_SIZE,
		    M_DEVBUF, FUNC0(dmat->common.domain), M_NOWAIT,
		    0ul, bz->lowaddr, PAGE_SIZE, 0);
		if (bpage->vaddr == 0) {
			FUNC3(bpage, M_DEVBUF);
			break;
		}
		bpage->busaddr = FUNC7(bpage->vaddr);
		FUNC5(&bounce_lock);
		FUNC1(&bz->bounce_page_list, bpage, links);
		total_bpages++;
		bz->total_bpages++;
		bz->free_bpages++;
		FUNC6(&bounce_lock);
		count++;
		numpages--;
	}
	return (count);
}