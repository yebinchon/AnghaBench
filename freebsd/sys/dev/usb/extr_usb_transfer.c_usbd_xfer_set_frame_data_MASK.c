#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_frlength_t ;
typedef  size_t usb_frcount_t ;
struct usb_xfer {size_t max_frame_count; TYPE_1__* frbuffers; } ;
struct TYPE_2__ {void* buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_xfer*,size_t,int /*<<< orphan*/ ) ; 

void
FUNC2(struct usb_xfer *xfer, usb_frcount_t frindex,
    void *ptr, usb_frlength_t len)
{
	FUNC0(frindex < xfer->max_frame_count, ("frame index overflow"));

	/* set virtual address to load and length */
	xfer->frbuffers[frindex].buffer = ptr;
	FUNC1(xfer, frindex, len);
}