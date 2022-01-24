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
struct rtwn_usb_softc {int /*<<< orphan*/ * uc_xfer; } ;
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int RTWN_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*) ; 
 struct rtwn_usb_softc* FUNC3 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct rtwn_softc *sc)
{
	struct rtwn_usb_softc *uc = FUNC3(sc);
	int i;

	FUNC0(sc);

	/* abort any pending transfers */
	FUNC2(sc);
	for (i = 0; i < RTWN_N_TRANSFER; i++)
		FUNC4(uc->uc_xfer[i]);
	FUNC1(sc);
}