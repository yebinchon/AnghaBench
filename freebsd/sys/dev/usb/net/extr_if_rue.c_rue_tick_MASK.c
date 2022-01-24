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
struct usb_ether {int dummy; } ;
struct rue_softc {int sc_flags; } ;
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;

/* Variables and functions */
 struct mii_data* FUNC0 (struct rue_softc*) ; 
 int IFM_ACTIVE ; 
 scalar_t__ IFM_NONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int RUE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC2 (struct rue_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_ether*) ; 
 struct rue_softc* FUNC5 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC6(struct usb_ether *ue)
{
	struct rue_softc *sc = FUNC5(ue);
	struct mii_data *mii = FUNC0(sc);

	FUNC2(sc, MA_OWNED);

	FUNC3(mii);
	if ((sc->sc_flags & RUE_FLAG_LINK) == 0
	    && mii->mii_media_status & IFM_ACTIVE &&
	    FUNC1(mii->mii_media_active) != IFM_NONE) {
		sc->sc_flags |= RUE_FLAG_LINK;
		FUNC4(ue);
	}
}