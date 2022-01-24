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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  ue_dev; } ;
struct aue_softc {TYPE_1__ sc_ue; } ;

/* Variables and functions */
 int AUE_EECTL_DONE ; 
 int AUE_EECTL_READ ; 
 int /*<<< orphan*/  AUE_EE_CTL ; 
 int /*<<< orphan*/  AUE_EE_DATA ; 
 int /*<<< orphan*/  AUE_EE_REG ; 
 int AUE_TIMEOUT ; 
 int FUNC0 (struct aue_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aue_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aue_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static uint16_t
FUNC5(struct aue_softc *sc, int addr)
{
	int i;

	FUNC2(sc, AUE_EE_REG, addr);
	FUNC2(sc, AUE_EE_CTL, AUE_EECTL_READ);

	for (i = 0; i != AUE_TIMEOUT; i++) {
		if (FUNC0(sc, AUE_EE_CTL) & AUE_EECTL_DONE)
			break;
		if (FUNC4(&sc->sc_ue, hz / 100))
			break;
	}

	if (i == AUE_TIMEOUT)
		FUNC3(sc->sc_ue.ue_dev, "EEPROM read timed out\n");

	return (FUNC1(sc, AUE_EE_DATA));
}