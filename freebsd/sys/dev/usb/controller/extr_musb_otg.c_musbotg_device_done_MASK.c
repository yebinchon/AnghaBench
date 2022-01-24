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
struct usb_xfer {struct musbotg_td* td_transfer_cache; TYPE_1__* xroot; int /*<<< orphan*/  endpoint; } ;
struct musbotg_td {int channel; } ;
struct musbotg_softc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 struct musbotg_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct musbotg_softc*,struct musbotg_td*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct usb_xfer *xfer, usb_error_t error)
{
	struct musbotg_td *td;
	struct musbotg_softc *sc;

	FUNC2(xfer->xroot->bus, MA_OWNED);

	FUNC0(1, "xfer=%p, endpoint=%p, error=%d\n",
	    xfer, xfer->endpoint, error);

	FUNC0(14, "disabled interrupts on endpoint\n");

	sc = FUNC1(xfer->xroot->bus);
	td = xfer->td_transfer_cache;

	if (td && (td->channel != -1))
		FUNC3(sc, td);

	/* dequeue transfer and start next transfer */
	FUNC4(xfer, error);
}