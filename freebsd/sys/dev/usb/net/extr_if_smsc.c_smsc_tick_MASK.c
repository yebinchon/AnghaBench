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
struct smsc_softc {int sc_flags; int /*<<< orphan*/  sc_ue; } ;
struct mii_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int SMSC_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct smsc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ether*) ; 
 struct mii_data* FUNC4 (int /*<<< orphan*/ *) ; 
 struct smsc_softc* FUNC5 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC6(struct usb_ether *ue)
{
	struct smsc_softc *sc = FUNC5(ue);
	struct mii_data *mii = FUNC4(&sc->sc_ue);

	FUNC0(sc, MA_OWNED);

	FUNC1(mii);
	if ((sc->sc_flags & SMSC_FLAG_LINK) == 0) {
		FUNC2(ue->ue_dev);
		if ((sc->sc_flags & SMSC_FLAG_LINK) != 0)
			FUNC3(ue);
	}
}