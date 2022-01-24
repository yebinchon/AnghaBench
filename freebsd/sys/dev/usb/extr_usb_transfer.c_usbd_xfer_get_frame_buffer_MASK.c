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
typedef  size_t usb_frcount_t ;
struct usb_xfer {size_t max_frame_count; int /*<<< orphan*/ * frbuffers; } ;
struct usb_page_search {void* buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct usb_page_search*) ; 

void *
FUNC2(struct usb_xfer *xfer, usb_frcount_t frindex)
{
	struct usb_page_search page_info;

	FUNC0(frindex < xfer->max_frame_count, ("frame index overflow"));

	FUNC1(&xfer->frbuffers[frindex], 0, &page_info);
	return (page_info.buffer);
}