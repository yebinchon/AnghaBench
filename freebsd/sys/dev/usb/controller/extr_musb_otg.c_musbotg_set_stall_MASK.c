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
typedef  int uint8_t ;
struct usb_endpoint {TYPE_1__* edesc; } ;
struct usb_device {int /*<<< orphan*/  bus; } ;
struct musbotg_softc {int dummy; } ;
struct TYPE_2__ {int bEndpointAddress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct usb_endpoint*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int MUSB2_MASK_CSRL_RXSENDSTALL ; 
 int MUSB2_MASK_CSRL_TXSENDSTALL ; 
 int /*<<< orphan*/  MUSB2_REG_EPINDEX ; 
 int /*<<< orphan*/  MUSB2_REG_RXCSRL ; 
 int /*<<< orphan*/  MUSB2_REG_TXCSRL ; 
 int /*<<< orphan*/  FUNC1 (struct musbotg_softc*,int /*<<< orphan*/ ,int) ; 
 struct musbotg_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int UE_ADDR ; 
 int UE_DIR_IN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct usb_device *udev,
    struct usb_endpoint *ep, uint8_t *did_stall)
{
	struct musbotg_softc *sc;
	uint8_t ep_no;

	FUNC3(udev->bus, MA_OWNED);

	FUNC0(4, "endpoint=%p\n", ep);

	/* set FORCESTALL */
	sc = FUNC2(udev->bus);

	ep_no = (ep->edesc->bEndpointAddress & UE_ADDR);

	/* select endpoint */
	FUNC1(sc, MUSB2_REG_EPINDEX, ep_no);

	if (ep->edesc->bEndpointAddress & UE_DIR_IN) {
		FUNC1(sc, MUSB2_REG_TXCSRL,
		    MUSB2_MASK_CSRL_TXSENDSTALL);
	} else {
		FUNC1(sc, MUSB2_REG_RXCSRL,
		    MUSB2_MASK_CSRL_RXSENDSTALL);
	}
}