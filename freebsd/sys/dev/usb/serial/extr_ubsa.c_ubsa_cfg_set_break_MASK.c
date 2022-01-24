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
struct ucom_softc {struct ubsa_softc* sc_parent; } ;
struct ubsa_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  UBSA_REG_BREAK ; 
 int /*<<< orphan*/  FUNC1 (struct ubsa_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct ucom_softc *ucom, uint8_t onoff)
{
	struct ubsa_softc *sc = ucom->sc_parent;

	FUNC0("onoff = %d\n", onoff);

	FUNC1(sc, UBSA_REG_BREAK, onoff ? 1 : 0);
}