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
typedef  scalar_t__ usb_timeout_t ;
typedef  scalar_t__ uint8_t ;
struct usb_xfer_root {int /*<<< orphan*/  memory_base; int /*<<< orphan*/  cv_drain; int /*<<< orphan*/  dma_parent_tag; struct usb_page_cache* xfer_page_cache_end; struct usb_page_cache* xfer_page_cache_start; struct usb_page_cache* dma_page_cache_end; struct usb_page_cache* dma_page_cache_start; TYPE_1__* bus; int /*<<< orphan*/ * done_m; int /*<<< orphan*/  done_p; int /*<<< orphan*/  udev; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_USB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_page_cache*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_page_cache*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct usb_xfer_root *info, uint8_t needs_delay)
{
#if USB_HAVE_BUSDMA
	struct usb_page_cache *pc;
#endif

	FUNC0(info->bus, MA_OWNED);

	/* wait for any outstanding DMA operations */

	if (needs_delay) {
		usb_timeout_t temp;
		temp = FUNC10(info->udev);
		if (temp != 0) {
			FUNC6(&info->bus->bus_mtx,
			    FUNC2(temp));
		}
	}

	/* make sure that our done messages are not queued anywhere */
	FUNC9(info->done_p, &info->done_m[0], &info->done_m[1]);

	FUNC1(info->bus);

#if USB_HAVE_BUSDMA
	/* free DMA'able memory, if any */
	pc = info->dma_page_cache_start;
	while (pc != info->dma_page_cache_end) {
		usb_pc_free_mem(pc);
		pc++;
	}

	/* free DMA maps in all "xfer->frbuffers" */
	pc = info->xfer_page_cache_start;
	while (pc != info->xfer_page_cache_end) {
		usb_pc_dmamap_destroy(pc);
		pc++;
	}

	/* free all DMA tags */
	usb_dma_tag_unsetup(&info->dma_parent_tag);
#endif

	FUNC3(&info->cv_drain);

	/*
	 * free the "memory_base" last, hence the "info" structure is
	 * contained within the "memory_base"!
	 */
	FUNC4(info->memory_base, M_USB);
}