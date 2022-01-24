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
typedef  char uint8_t ;
struct pmu_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMU_CPU_SPEED ; 
 struct pmu_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  pmu ; 
 int /*<<< orphan*/  FUNC4 (struct pmu_softc*,int /*<<< orphan*/ ,int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pmu_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vIER ; 

int
FUNC10(int low_speed)
{
	struct pmu_softc *sc;
	uint8_t sleepcmd[] = {'W', 'O', 'O', 'F', 0};
	uint8_t resp[16];

	sc = FUNC0(pmu);
	FUNC5(sc, vIER, 0x10);
	FUNC6();
	FUNC2(0x7fffffff);
	FUNC1();
	FUNC2(0x7fffffff);

	sleepcmd[4] = low_speed;
	FUNC4(sc, PMU_CPU_SPEED, 5, sleepcmd, 16, resp);
	FUNC8(NULL, 1);
	FUNC3();
	FUNC9(NULL);

	FUNC2(1);	/* Force a decrementer exception */
	FUNC7();
	FUNC5(sc, vIER, 0x90);

	return (0);
}