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
struct ubt_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ubt_softc*) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*,int,int /*<<< orphan*/ ) ; 
 struct ubt_softc* FUNC6 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void
FUNC8(struct usb_xfer *xfer, usb_error_t error)
{
	struct ubt_softc	*sc = FUNC6(xfer);
	int			n;
	int actlen, nframes;

	FUNC7(xfer, &actlen, NULL, NULL, &nframes);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		for (n = 0; n < nframes; n ++)
			if (FUNC2(xfer, n) < 0)
				break;
		/* FALLTHROUGH */

	case USB_ST_SETUP:
read_next:
		for (n = 0; n < nframes; n ++)
			FUNC5(xfer, n,
			    FUNC4(xfer));

		FUNC3(xfer);
		break;

	default: /* Error */
                if (error != USB_ERR_CANCELLED) {
                        FUNC0(sc);
                        goto read_next;
                }

		/* transfer cancelled */
		break;
	}
}