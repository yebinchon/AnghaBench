#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct page {int dummy; } ;
struct ib_umem {TYPE_2__* context; TYPE_1__* odp_data; } ;
struct ib_device {int dummy; } ;
typedef  int dma_addr_t ;
struct TYPE_4__ {scalar_t__ invalidate_range; struct ib_device* device; } ;
struct TYPE_3__ {int* dma_list; struct page** page_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int EAGAIN ; 
 int EFAULT ; 
 int PAGE_SIZE ; 
 int FUNC0 (struct ib_device*,struct page*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ib_device*,int) ; 
 scalar_t__ FUNC2 (struct ib_umem*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_umem*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static int FUNC6(
		struct ib_umem *umem,
		int page_index,
		u64 base_virt_addr,
		struct page *page,
		u64 access_mask,
		unsigned long current_seq)
{
	struct ib_device *dev = umem->context->device;
	dma_addr_t dma_addr;
	int stored_page = 0;
	int remove_existing_mapping = 0;
	int ret = 0;

	/*
	 * Note: we avoid writing if seq is different from the initial seq, to
	 * handle case of a racing notifier. This check also allows us to bail
	 * early if we have a notifier running in parallel with us.
	 */
	if (FUNC2(umem, current_seq)) {
		ret = -EAGAIN;
		goto out;
	}
	if (!(umem->odp_data->dma_list[page_index])) {
		dma_addr = FUNC0(dev,
					   page,
					   0, PAGE_SIZE,
					   DMA_BIDIRECTIONAL);
		if (FUNC1(dev, dma_addr)) {
			ret = -EFAULT;
			goto out;
		}
		umem->odp_data->dma_list[page_index] = dma_addr | access_mask;
		umem->odp_data->page_list[page_index] = page;
		stored_page = 1;
	} else if (umem->odp_data->page_list[page_index] == page) {
		umem->odp_data->dma_list[page_index] |= access_mask;
	} else {
		FUNC4("error: got different pages in IB device and from get_user_pages. IB device page: %p, gup page: %p\n",
		       umem->odp_data->page_list[page_index], page);
		/* Better remove the mapping now, to prevent any further
		 * damage. */
		remove_existing_mapping = 1;
	}

out:
	/* On Demand Paging - avoid pinning the page */
	if (umem->context->invalidate_range || !stored_page)
		FUNC5(page);

	if (remove_existing_mapping && umem->context->invalidate_range) {
		FUNC3(
			umem,
			base_virt_addr + (page_index * PAGE_SIZE),
			base_virt_addr + ((page_index+1)*PAGE_SIZE),
			NULL);
		ret = -EAGAIN;
	}

	return ret;
}