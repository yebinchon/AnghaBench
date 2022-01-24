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
typedef  int uint16_t ;
struct rl_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rl_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RL_EECMD ; 
 int RL_EEMODE_OFF ; 
 int RL_EEMODE_PROGRAM ; 
 int /*<<< orphan*/  RL_EE_CLK ; 
 int RL_EE_DATAOUT ; 
 int RL_EE_SEL ; 
 int /*<<< orphan*/  FUNC5 (struct rl_softc*,int) ; 

__attribute__((used)) static void
FUNC6(struct rl_softc *sc, int addr, uint16_t *dest)
{
	int			i;
	uint16_t		word = 0;

	/* Enter EEPROM access mode. */
	FUNC1(sc, RL_EECMD, RL_EEMODE_PROGRAM|RL_EE_SEL);

	/*
	 * Send address of word we want to read.
	 */
	FUNC5(sc, addr);

	FUNC1(sc, RL_EECMD, RL_EEMODE_PROGRAM|RL_EE_SEL);

	/*
	 * Start reading bits from EEPROM.
	 */
	for (i = 0x8000; i; i >>= 1) {
		FUNC4(RL_EE_CLK);
		FUNC2(100);
		if (FUNC0(sc, RL_EECMD) & RL_EE_DATAOUT)
			word |= i;
		FUNC3(RL_EE_CLK);
		FUNC2(100);
	}

	/* Turn off EEPROM access mode. */
	FUNC1(sc, RL_EECMD, RL_EEMODE_OFF);

	*dest = word;
}