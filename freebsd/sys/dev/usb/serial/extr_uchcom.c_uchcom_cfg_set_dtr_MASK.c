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
typedef  int /*<<< orphan*/  uint8_t ;
struct ucom_softc {struct uchcom_softc* sc_parent; } ;
struct uchcom_softc {int /*<<< orphan*/  sc_dtr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uchcom_softc*) ; 

__attribute__((used)) static void
FUNC2(struct ucom_softc *ucom, uint8_t onoff)
{
	struct uchcom_softc *sc = ucom->sc_parent;

	FUNC0("onoff = %d\n", onoff);

	sc->sc_dtr = onoff;
	FUNC1(sc);
}