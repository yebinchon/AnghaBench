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
struct usb_xfer {TYPE_1__* xroot; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct usb_xfer*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_ERR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct usb_xfer *xfer = arg;

	FUNC0("xfer=%p\n", xfer);

	FUNC1(xfer->xroot->bus, MA_OWNED);

	/* transfer is transferred */
	FUNC2(xfer, USB_ERR_TIMEOUT);
}