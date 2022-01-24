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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct usb_xfer {scalar_t__ endpointno; TYPE_1__* xroot; } ;
struct saf1761_otg_softc {int sc_intr_enable; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__,scalar_t__) ; 
 struct saf1761_otg_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct saf1761_otg_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SOTG_DCINTERRUPT_EN ; 
 int SOTG_DCINTERRUPT_IEP0SETUP ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ UE_ADDR ; 
 int UE_DIR_IN ; 

__attribute__((used)) static void
FUNC5(struct usb_xfer *xfer, uint8_t set)
{
	struct saf1761_otg_softc *sc = FUNC1(xfer->xroot->bus);
	uint8_t ep_no = (xfer->endpointno & UE_ADDR);
	uint32_t mask;

	FUNC0(15, "endpoint=%d set=%d\n", xfer->endpointno, set);

	if (ep_no == 0) {
		mask = FUNC3(0) |
		    FUNC4(0) |
		    SOTG_DCINTERRUPT_IEP0SETUP;
	} else if (xfer->endpointno & UE_DIR_IN) {
		mask = FUNC4(ep_no);
	} else {
		mask = FUNC3(ep_no);
	}

	if (set)
		sc->sc_intr_enable |= mask;
	else
		sc->sc_intr_enable &= ~mask;

	FUNC2(sc, SOTG_DCINTERRUPT_EN, sc->sc_intr_enable);
}