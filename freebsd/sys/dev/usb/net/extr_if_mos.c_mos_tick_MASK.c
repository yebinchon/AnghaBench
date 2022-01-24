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
struct mos_softc {int /*<<< orphan*/  mos_link; } ;
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;

/* Variables and functions */
 struct mii_data* FUNC0 (struct mos_softc*) ; 
 int IFM_ACTIVE ; 
 scalar_t__ IFM_NONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mos_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ether*) ; 
 struct mos_softc* FUNC6 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC7(struct usb_ether *ue)
{
	struct mos_softc *sc = FUNC6(ue);
	struct mii_data *mii = FUNC0(sc);

	FUNC3(sc, MA_OWNED);

	FUNC4(mii);
	if (!sc->mos_link && mii->mii_media_status & IFM_ACTIVE &&
	    FUNC1(mii->mii_media_active) != IFM_NONE) {
		FUNC2("got link");
		sc->mos_link++;
		FUNC5(ue);
	}
}