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
typedef  scalar_t__ uint8_t ;
struct uhso_softc {int /*<<< orphan*/  sc_line; int /*<<< orphan*/  sc_type; } ;
struct ucom_softc {struct uhso_softc* sc_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCDC_LINE_RTS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int UHSO_IF_BULK ; 
 int /*<<< orphan*/  FUNC1 (struct uhso_softc*) ; 

__attribute__((used)) static void
FUNC2(struct ucom_softc *ucom, uint8_t onoff)
{
	struct uhso_softc *sc = ucom->sc_parent;

	if (!(FUNC0(sc->sc_type) & UHSO_IF_BULK))
		return;

	if (onoff)
		sc->sc_line |= UCDC_LINE_RTS;
	else
		sc->sc_line &= ~UCDC_LINE_RTS;

	FUNC1(sc);
}