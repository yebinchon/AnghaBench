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
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;
struct atmegadci_softc {TYPE_1__ sc_bus; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct atmegadci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATMEGA_UECFG0X ; 
 scalar_t__ ATMEGA_UECFG0X_EPDIR ; 
 scalar_t__ ATMEGA_UECFG0X_EPTYPE1 ; 
 scalar_t__ ATMEGA_UECFG0X_EPTYPE2 ; 
 scalar_t__ ATMEGA_UECFG0X_EPTYPE3 ; 
 int /*<<< orphan*/  ATMEGA_UECFG1X ; 
 scalar_t__ ATMEGA_UECFG1X_ALLOC ; 
 scalar_t__ ATMEGA_UECFG1X_EPBK0 ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  ATMEGA_UECONX ; 
 scalar_t__ ATMEGA_UECONX_EPEN ; 
 scalar_t__ ATMEGA_UECONX_RSTDT ; 
 scalar_t__ ATMEGA_UECONX_STALLRQ ; 
 scalar_t__ ATMEGA_UECONX_STALLRQC ; 
 int /*<<< orphan*/  ATMEGA_UENUM ; 
 int /*<<< orphan*/  ATMEGA_UERST ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  ATMEGA_UESTA0X ; 
 scalar_t__ ATMEGA_UESTA0X_CFGOK ; 
 int /*<<< orphan*/  FUNC3 (struct atmegadci_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ UE_BULK ; 
 scalar_t__ UE_CONTROL ; 
 scalar_t__ UE_DIR_IN ; 
 scalar_t__ UE_INTERRUPT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(struct atmegadci_softc *sc, uint8_t ep_no,
    uint8_t ep_type, uint8_t ep_dir)
{
	uint8_t temp;

	if (ep_type == UE_CONTROL) {
		/* clearing stall is not needed */
		return;
	}
	/* select endpoint number */
	FUNC3(sc, ATMEGA_UENUM, ep_no);

	/* set endpoint reset */
	FUNC3(sc, ATMEGA_UERST, FUNC2(ep_no));

	/* clear endpoint reset */
	FUNC3(sc, ATMEGA_UERST, 0);

	/* set stall */
	FUNC3(sc, ATMEGA_UECONX,
	    ATMEGA_UECONX_EPEN |
	    ATMEGA_UECONX_STALLRQ);

	/* reset data toggle */
	FUNC3(sc, ATMEGA_UECONX,
	    ATMEGA_UECONX_EPEN |
	    ATMEGA_UECONX_RSTDT);

	/* clear stall */
	FUNC3(sc, ATMEGA_UECONX,
	    ATMEGA_UECONX_EPEN |
	    ATMEGA_UECONX_STALLRQC);

	do {
		if (ep_type == UE_BULK) {
			temp = ATMEGA_UECFG0X_EPTYPE2;
		} else if (ep_type == UE_INTERRUPT) {
			temp = ATMEGA_UECFG0X_EPTYPE3;
		} else {
			temp = ATMEGA_UECFG0X_EPTYPE1;
		}
		if (ep_dir & UE_DIR_IN) {
			temp |= ATMEGA_UECFG0X_EPDIR;
		}
		/* two banks, 64-bytes wMaxPacket */
		FUNC3(sc, ATMEGA_UECFG0X, temp);
		FUNC3(sc, ATMEGA_UECFG1X,
		    ATMEGA_UECFG1X_ALLOC |
		    ATMEGA_UECFG1X_EPBK0 |	/* one bank */
		    FUNC1(3));

		temp = FUNC0(sc, ATMEGA_UESTA0X);
		if (!(temp & ATMEGA_UESTA0X_CFGOK)) {
			FUNC4(sc->sc_bus.bdev,
			    "Chip rejected configuration\n");
		}
	} while (0);
}