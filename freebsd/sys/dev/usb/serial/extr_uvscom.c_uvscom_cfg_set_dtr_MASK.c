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
struct uvscom_softc {int /*<<< orphan*/  sc_line; } ;
struct ucom_softc {struct uvscom_softc* sc_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  UVSCOM_DTR ; 
 int /*<<< orphan*/  UVSCOM_LINE_CTL ; 
 int /*<<< orphan*/  FUNC1 (struct uvscom_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ucom_softc *ucom, uint8_t onoff)
{
	struct uvscom_softc *sc = ucom->sc_parent;

	FUNC0("onoff = %d\n", onoff);

	if (onoff)
		sc->sc_line |= UVSCOM_DTR;
	else
		sc->sc_line &= ~UVSCOM_DTR;

	FUNC1(sc, UVSCOM_LINE_CTL, sc->sc_line);
}