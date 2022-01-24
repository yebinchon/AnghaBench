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
struct rl_softc {int /*<<< orphan*/  rl_dev; } ;

/* Variables and functions */
 int FUNC0 (struct rl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rl_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int RL_CMD_RESET ; 
 int /*<<< orphan*/  RL_COMMAND ; 
 int /*<<< orphan*/  FUNC3 (struct rl_softc*) ; 
 int RL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(struct rl_softc *sc)
{
	int			i;

	FUNC3(sc);

	FUNC1(sc, RL_COMMAND, RL_CMD_RESET);

	for (i = 0; i < RL_TIMEOUT; i++) {
		FUNC2(10);
		if (!(FUNC0(sc, RL_COMMAND) & RL_CMD_RESET))
			break;
	}
	if (i == RL_TIMEOUT)
		FUNC4(sc->rl_dev, "reset never completed!\n");
}