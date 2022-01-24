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
typedef  int /*<<< orphan*/  usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ubt_hci_event {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ubt_hci_event*) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_page_cache*,int /*<<< orphan*/ ,struct ubt_hci_event*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*) ; 
 struct ubt_hci_event* FUNC10 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ubt_hci_event*) ; 

__attribute__((used)) static void
FUNC13(struct usb_xfer *xfer, usb_error_t error)
{
	struct ubt_hci_event	*evt = FUNC10(xfer);
	struct usb_page_cache	*pc;
	int			actlen;

	FUNC11(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		if (actlen > FUNC0(evt))
			actlen = FUNC0(evt);
		pc = FUNC6(xfer, 0);
		FUNC3(pc, 0, evt, actlen);
		/* OneShot mode */
		FUNC12(evt);
		break;

        case USB_ST_SETUP:
submit_next:
		/* Try clear stall first */
		FUNC9(xfer);
		FUNC8(xfer, 0, FUNC7(xfer));
		FUNC5(xfer);
		break;

	default:
		if (error != USB_ERR_CANCELLED) {
			FUNC2("ng_ubt: interrupt transfer failed: %s\n",
				FUNC4(error));
			goto submit_next;
		}
		break;
	}
}