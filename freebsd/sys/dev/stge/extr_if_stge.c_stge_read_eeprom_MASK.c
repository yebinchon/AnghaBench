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
typedef  int /*<<< orphan*/  uint16_t ;
struct stge_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stge_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_OP_RR ; 
 int /*<<< orphan*/  STGE_EepromCtrl ; 
 int /*<<< orphan*/  STGE_EepromData ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (struct stge_softc*) ; 

__attribute__((used)) static void
FUNC6(struct stge_softc *sc, int offset, uint16_t *data)
{

	if (FUNC5(sc))
		FUNC4(sc->sc_dev, "EEPROM failed to come ready\n");

	FUNC1(sc, STGE_EepromCtrl,
	    FUNC2(offset) | FUNC3(EC_OP_RR));
	if (FUNC5(sc))
		FUNC4(sc->sc_dev, "EEPROM read timed out\n");
	*data = FUNC0(sc, STGE_EepromData);
}