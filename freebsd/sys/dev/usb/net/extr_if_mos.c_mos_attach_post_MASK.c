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
struct usb_ether {int /*<<< orphan*/  ue_eaddr; } ;
struct mos_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mos_softc*) ; 
 int FUNC3 (struct mos_softc*,int /*<<< orphan*/ ) ; 
 struct mos_softc* FUNC4 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC5(struct usb_ether *ue)
{
	struct mos_softc *sc = FUNC4(ue);
        int err;

	/* Read MAC address, inform the world. */
	err = FUNC3(sc, ue->ue_eaddr);

	if (err)
	  FUNC0("couldn't get MAC address");

	FUNC0("address: %s", FUNC1(ue->ue_eaddr));

	FUNC2(sc);
}