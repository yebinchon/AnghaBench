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
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ u_int ;
struct bounce_zone {int /*<<< orphan*/  free_bpages; int /*<<< orphan*/  total_bpages; int /*<<< orphan*/  bounce_page_list; int /*<<< orphan*/  lowaddr; } ;
struct bounce_page {scalar_t__ vaddr; int /*<<< orphan*/  busaddr; } ;
typedef  TYPE_1__* bus_dma_tag_t ;
struct TYPE_3__ {struct bounce_zone* bounce_zone; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bounce_page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bounce_lock ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bounce_page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  total_bpages ; 

__attribute__((used)) static int
FUNC7(bus_dma_tag_t dmat, u_int numpages)
{
	struct bounce_zone *bz;
	int count;

	bz = dmat->bounce_zone;
	count = 0;
	while (numpages > 0) {
		struct bounce_page *bpage;

		bpage = (struct bounce_page *)FUNC3(sizeof(*bpage), M_DEVBUF,
						     M_NOWAIT | M_ZERO);

		if (bpage == NULL)
			break;
		bpage->vaddr = (vm_offset_t)FUNC1(PAGE_SIZE, M_DEVBUF,
							 M_NOWAIT, 0ul,
							 bz->lowaddr,
							 PAGE_SIZE,
							 0);
		if (bpage->vaddr == 0) {
			FUNC2(bpage, M_DEVBUF);
			break;
		}
		bpage->busaddr = FUNC6(bpage->vaddr);
		FUNC4(&bounce_lock);
		FUNC0(&bz->bounce_page_list, bpage, links);
		total_bpages++;
		bz->total_bpages++;
		bz->free_bpages++;
		FUNC5(&bounce_lock);
		count++;
		numpages--;
	}
	return (count);
}