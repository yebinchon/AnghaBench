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
struct usb_ether {int /*<<< orphan*/  ue_dev; } ;
struct mii_data {int dummy; } ;
struct axe_softc {int sc_flags; } ;

/* Variables and functions */
 int AXE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct axe_softc*,int /*<<< orphan*/ ) ; 
 struct mii_data* FUNC1 (struct axe_softc*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_data*) ; 
 struct axe_softc* FUNC5 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC6(struct usb_ether *ue)
{
	struct axe_softc *sc = FUNC5(ue);
	struct mii_data *mii = FUNC1(sc);

	FUNC0(sc, MA_OWNED);

	FUNC4(mii);
	if ((sc->sc_flags & AXE_FLAG_LINK) == 0) {
		FUNC2(ue->ue_dev);
		if ((sc->sc_flags & AXE_FLAG_LINK) != 0)
			FUNC3(ue);
	}
}