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
struct atmegadci_softc {int dummy; } ;
struct TYPE_2__ {int bEndpointAddress; } ;

/* Variables and functions */
 struct atmegadci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATMEGA_UECONX ; 
 int ATMEGA_UECONX_EPEN ; 
 int ATMEGA_UECONX_STALLRQ ; 
 int /*<<< orphan*/  ATMEGA_UENUM ; 
 int /*<<< orphan*/  FUNC1 (struct atmegadci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,struct usb_endpoint*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int UE_ADDR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct usb_device *udev,
    struct usb_endpoint *ep, uint8_t *did_stall)
{
	struct atmegadci_softc *sc;
	uint8_t ep_no;

	FUNC3(udev->bus, MA_OWNED);

	FUNC2(5, "endpoint=%p\n", ep);

	sc = FUNC0(udev->bus);
	/* get endpoint number */
	ep_no = (ep->edesc->bEndpointAddress & UE_ADDR);
	/* select endpoint number */
	FUNC1(sc, ATMEGA_UENUM, ep_no);
	/* set stall */
	FUNC1(sc, ATMEGA_UECONX,
	    ATMEGA_UECONX_EPEN |
	    ATMEGA_UECONX_STALLRQ);
}