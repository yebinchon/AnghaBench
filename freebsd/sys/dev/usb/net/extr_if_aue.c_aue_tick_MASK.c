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
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct aue_softc {int sc_flags; } ;

/* Variables and functions */
 int AUE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct aue_softc*,int /*<<< orphan*/ ) ; 
 struct mii_data* FUNC1 (struct aue_softc*) ; 
 int IFM_ACTIVE ; 
 scalar_t__ IFM_NONE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_data*) ; 
 struct aue_softc* FUNC5 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC6(struct usb_ether *ue)
{
	struct aue_softc *sc = FUNC5(ue);
	struct mii_data *mii = FUNC1(sc);

	FUNC0(sc, MA_OWNED);

	FUNC4(mii);
	if ((sc->sc_flags & AUE_FLAG_LINK) == 0
	    && mii->mii_media_status & IFM_ACTIVE &&
	    FUNC2(mii->mii_media_active) != IFM_NONE) {
		sc->sc_flags |= AUE_FLAG_LINK;
		FUNC3(ue);
	}
}