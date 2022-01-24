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
struct ucom_softc {size_t sc_subunit; struct u3g_softc* sc_parent; } ;
struct u3g_softc {int /*<<< orphan*/ * sc_line; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  UCDC_LINE_RTS ; 
 int /*<<< orphan*/  FUNC1 (struct ucom_softc*) ; 

__attribute__((used)) static void
FUNC2(struct ucom_softc *ucom, uint8_t onoff)
{
	struct u3g_softc *sc = ucom->sc_parent;

	FUNC0("onoff = %d\n", onoff);

	if (onoff)
		sc->sc_line[ucom->sc_subunit] |= UCDC_LINE_RTS;
	else
		sc->sc_line[ucom->sc_subunit] &= ~UCDC_LINE_RTS;

	FUNC1(ucom);
}