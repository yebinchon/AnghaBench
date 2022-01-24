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
struct umass_softc {scalar_t__* sc_xfer; } ;

/* Variables and functions */
 size_t UMASS_T_CBI_COMMAND ; 
 int /*<<< orphan*/  UMASS_T_CBI_DATA_WRITE ; 
 size_t UMASS_T_CBI_RESET4 ; 
 size_t UMASS_T_CBI_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct usb_xfer*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct umass_softc* FUNC1 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC2(struct usb_xfer *xfer, usb_error_t error)
{
	struct umass_softc *sc = FUNC1(xfer);

	FUNC0
	    (xfer, (sc->sc_xfer[UMASS_T_CBI_RESET4] &&
	    sc->sc_xfer[UMASS_T_CBI_STATUS]) ?
	    UMASS_T_CBI_RESET4 : UMASS_T_CBI_COMMAND,
	    UMASS_T_CBI_DATA_WRITE, error);
}