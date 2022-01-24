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
struct uss820dci_softc {int /*<<< orphan*/  sc_bus; } ;
struct usb_endpoint {TYPE_1__* edesc; } ;
struct usb_device {int /*<<< orphan*/  bus; } ;
struct TYPE_2__ {int bEndpointAddress; int bmAttributes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct usb_endpoint*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int UE_ADDR ; 
 int UE_CONTROL ; 
 int UE_DIR_IN ; 
 int UE_DIR_OUT ; 
 int UE_XFERTYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct uss820dci_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USS820_EPCON ; 
 int USS820_EPCON_RXSTL ; 
 int USS820_EPCON_TXSTL ; 
 int /*<<< orphan*/  USS820_EPINDEX ; 
 int /*<<< orphan*/  FUNC5 (struct uss820dci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct uss820dci_softc*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC7(struct usb_device *udev,
    struct usb_endpoint *ep, uint8_t *did_stall)
{
	struct uss820dci_softc *sc;
	uint8_t ep_no;
	uint8_t ep_type;
	uint8_t ep_dir;
	uint8_t temp;

	FUNC1(udev->bus, MA_OWNED);

	FUNC0(5, "endpoint=%p\n", ep);

	/* set FORCESTALL */
	sc = FUNC4(udev->bus);
	ep_no = (ep->edesc->bEndpointAddress & UE_ADDR);
	ep_dir = (ep->edesc->bEndpointAddress & (UE_DIR_IN | UE_DIR_OUT));
	ep_type = (ep->edesc->bmAttributes & UE_XFERTYPE);

	if (ep_type == UE_CONTROL) {
		/* should not happen */
		return;
	}
	FUNC2(&sc->sc_bus);
	FUNC5(sc, USS820_EPINDEX, ep_no);

	if (ep_dir == UE_DIR_IN) {
		temp = USS820_EPCON_TXSTL;
	} else {
		temp = USS820_EPCON_RXSTL;
	}
	FUNC6(sc, USS820_EPCON, 0xFF, temp);
	FUNC3(&sc->sc_bus);
}