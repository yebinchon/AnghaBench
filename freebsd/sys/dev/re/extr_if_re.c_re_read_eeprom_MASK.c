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
typedef  int /*<<< orphan*/  u_int16_t ;
struct rl_softc {int dummy; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rl_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rl_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  RL_EECMD ; 
 int /*<<< orphan*/  RL_EEMODE_PROGRAM ; 
 int /*<<< orphan*/  RL_EE_SEL ; 
 int /*<<< orphan*/  FUNC3 (struct rl_softc*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct rl_softc *sc, caddr_t dest, int off, int cnt)
{
	int			i;
	u_int16_t		word = 0, *ptr;

	FUNC1(sc, RL_EECMD, RL_EEMODE_PROGRAM);

        FUNC2(100);

	for (i = 0; i < cnt; i++) {
		FUNC1(sc, RL_EECMD, RL_EE_SEL);
		FUNC3(sc, off + i, &word);
		FUNC0(sc, RL_EECMD, RL_EE_SEL);
		ptr = (u_int16_t *)(dest + (i * 2));
                *ptr = word;
	}

	FUNC0(sc, RL_EECMD, RL_EEMODE_PROGRAM);
}