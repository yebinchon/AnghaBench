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
typedef  int u_int16_t ;
struct rl_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RL_EECMD ; 
 int /*<<< orphan*/  RL_EE_CLK ; 
 int RL_EE_DATAOUT ; 
 int /*<<< orphan*/  FUNC4 (struct rl_softc*,int) ; 

__attribute__((used)) static void
FUNC5(struct rl_softc *sc, int addr, u_int16_t *dest)
{
	int			i;
	u_int16_t		word = 0;

	/*
	 * Send address of word we want to read.
	 */
	FUNC4(sc, addr);

	/*
	 * Start reading bits from EEPROM.
	 */
	for (i = 0x8000; i; i >>= 1) {
		FUNC3(RL_EE_CLK);
		FUNC1(100);
		if (FUNC0(sc, RL_EECMD) & RL_EE_DATAOUT)
			word |= i;
		FUNC2(RL_EE_CLK);
		FUNC1(100);
	}

	*dest = word;
}