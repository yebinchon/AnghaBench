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
typedef  size_t uint8_t ;
struct usb_xfer {int dummy; } ;
struct bbb_transfer {int /*<<< orphan*/ * xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_ERR_STALLED ; 
 int FUNC0 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC1 (struct bbb_transfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bbb_transfer*,size_t) ; 
 scalar_t__ FUNC3 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 struct bbb_transfer* FUNC4 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC5(struct usb_xfer *xfer,
    uint8_t next_xfer, uint8_t stall_xfer)
{
	struct bbb_transfer *sc = FUNC4(xfer);

	if (FUNC3(xfer, sc->xfer[stall_xfer])) {
		switch (FUNC0(xfer)) {
		case USB_ST_SETUP:
		case USB_ST_TRANSFERRED:
			FUNC2(sc, next_xfer);
			break;
		default:
			FUNC1(sc, USB_ERR_STALLED);
			break;
		}
	}
}