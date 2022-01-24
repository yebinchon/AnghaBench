#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uhso_softc {int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_type; TYPE_1__* sc_tty; } ;
struct ucom_softc {size_t sc_subunit; struct uhso_softc* sc_parent; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ht_xfer; } ;

/* Variables and functions */
 size_t UHSO_BULK_ENDPT_WRITE ; 
 size_t UHSO_CTRL_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int UHSO_IF_BULK ; 
 int UHSO_IF_MUX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ucom_softc *ucom)
{
	struct uhso_softc *sc = ucom->sc_parent;

	if (FUNC0(sc->sc_type) & UHSO_IF_MUX) {
		FUNC1(
		    sc->sc_tty[ucom->sc_subunit].ht_xfer[UHSO_CTRL_WRITE]);
	}
	else if (FUNC0(sc->sc_type) & UHSO_IF_BULK) {
		FUNC1(sc->sc_xfer[UHSO_BULK_ENDPT_WRITE]);
	}
}