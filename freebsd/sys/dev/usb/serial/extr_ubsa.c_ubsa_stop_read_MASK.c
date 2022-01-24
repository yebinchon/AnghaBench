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
struct ucom_softc {struct ubsa_softc* sc_parent; } ;
struct ubsa_softc {int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 size_t UBSA_BULK_DT_RD ; 
 size_t UBSA_INTR_DT_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct ucom_softc *ucom)
{
	struct ubsa_softc *sc = ucom->sc_parent;

	/* stop interrupt endpoint */
	FUNC0(sc->sc_xfer[UBSA_INTR_DT_RD]);

	/* stop read endpoint */
	FUNC0(sc->sc_xfer[UBSA_BULK_DT_RD]);
}