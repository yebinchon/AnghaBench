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
struct rl_softc {int rl_eewidth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int RL_9346_READ ; 
 int /*<<< orphan*/  RL_EE_CLK ; 
 int /*<<< orphan*/  RL_EE_DATAIN ; 

__attribute__((used)) static void
FUNC3(struct rl_softc *sc, int addr)
{
	int			d, i;

	d = addr | (RL_9346_READ << sc->rl_eewidth);

	/*
	 * Feed in each bit and strobe the clock.
	 */

	for (i = 1 << (sc->rl_eewidth + 3); i; i >>= 1) {
		if (d & i) {
			FUNC2(RL_EE_DATAIN);
		} else {
			FUNC1(RL_EE_DATAIN);
		}
		FUNC0(100);
		FUNC2(RL_EE_CLK);
		FUNC0(150);
		FUNC1(RL_EE_CLK);
		FUNC0(100);
	}
}