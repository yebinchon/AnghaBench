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
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ucom_softc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC0 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  USIE_BUFSIZE ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct ucom_softc*,struct usb_page_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_page_cache*,int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC6 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*) ; 
 struct ucom_softc* FUNC10 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC11(struct usb_xfer *xfer, usb_error_t error)
{
	struct ucom_softc *ucom = FUNC10(xfer);
	struct usb_page_cache *pc;
	uint32_t actlen;

	switch (FUNC0(xfer)) {
	case USB_ST_TRANSFERRED:
	case USB_ST_SETUP:
tr_setup:
		pc = FUNC5(xfer, 0);

		/* handle CnS request */
		struct mbuf *m = FUNC6(xfer);

		if (m != NULL) {
			FUNC3(pc, 0, m, 0, m->m_pkthdr.len);
			FUNC7(xfer, 0, m->m_pkthdr.len);
			FUNC8(xfer, NULL);
			FUNC4(xfer);
			FUNC1(m);
			break;
		}
		/* standard ucom transfer */
		if (FUNC2(ucom, pc, 0, USIE_BUFSIZE, &actlen)) {
			FUNC7(xfer, 0, actlen);
			FUNC4(xfer);
		}
		break;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			FUNC9(xfer);
			goto tr_setup;
		}
		break;
	}
}