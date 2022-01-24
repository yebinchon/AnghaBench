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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  ehci_softc_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FILTER_HANDLED ; 
 unsigned int MV_USB_ADDR_DECODE_ERR ; 
 unsigned int MV_USB_DEVICE_UNDERFLOW ; 
 unsigned int MV_USB_HOST_OVERFLOW ; 
 unsigned int MV_USB_HOST_UNDERFLOW ; 
 int /*<<< orphan*/  USB_BRIDGE_ERR_ADDR ; 
 int /*<<< orphan*/  USB_BRIDGE_INTR_CAUSE ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int
FUNC3(void *arg)
{
	ehci_softc_t *sc = arg;
	unsigned int cause;

	cause = FUNC0(sc, USB_BRIDGE_INTR_CAUSE);
	if (cause) {
		FUNC2("USB error: ");
		if (cause & MV_USB_ADDR_DECODE_ERR) {
			uint32_t addr;

			addr = FUNC0(sc, USB_BRIDGE_ERR_ADDR);
			FUNC2("address decoding error (addr=%#x)\n", addr);
		}
		if (cause & MV_USB_HOST_UNDERFLOW)
			FUNC2("host underflow\n");
		if (cause & MV_USB_HOST_OVERFLOW)
			FUNC2("host overflow\n");
		if (cause & MV_USB_DEVICE_UNDERFLOW)
			FUNC2("device underflow\n");
		if (cause & ~(MV_USB_ADDR_DECODE_ERR | MV_USB_HOST_UNDERFLOW |
		    MV_USB_HOST_OVERFLOW | MV_USB_DEVICE_UNDERFLOW))
			FUNC2("unknown cause (cause=%#x)\n", cause);

		FUNC1(sc, USB_BRIDGE_INTR_CAUSE, 0);
	}
	return (FILTER_HANDLED);
}