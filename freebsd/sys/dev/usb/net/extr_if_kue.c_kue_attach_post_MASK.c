#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_ether {int /*<<< orphan*/  ue_eaddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  kue_macaddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  ue_dev; } ;
struct kue_softc {TYPE_2__ sc_desc; TYPE_1__ sc_ue; } ;

/* Variables and functions */
 int /*<<< orphan*/  KUE_CMD_GET_ETHER_DESCRIPTOR ; 
 int /*<<< orphan*/  KUE_CTL_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct kue_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int FUNC2 (struct kue_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct kue_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct kue_softc* FUNC5 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC6(struct usb_ether *ue)
{
	struct kue_softc *sc = FUNC5(ue);
	int error;

	/* load the firmware into the NIC */
	error = FUNC2(sc);
	if (error) {
		FUNC0(sc->sc_ue.ue_dev, "could not load firmware\n");
		/* ignore the error */
	}

	/* reset the adapter */
	FUNC3(sc);

	/* read ethernet descriptor */
	FUNC1(sc, KUE_CTL_READ, KUE_CMD_GET_ETHER_DESCRIPTOR,
	    0, &sc->sc_desc, sizeof(sc->sc_desc));

	/* copy in ethernet address */
	FUNC4(ue->ue_eaddr, sc->sc_desc.kue_macaddr, sizeof(ue->ue_eaddr));
}