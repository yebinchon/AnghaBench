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
struct pmu_softc {int dummy; } ;
struct pmu_battstate {int dummy; } ;
typedef  int /*<<< orphan*/  cur_batt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pmu_battstate*,int) ; 
 int /*<<< orphan*/  curproc ; 
 struct pmu_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pmu ; 
 int /*<<< orphan*/  FUNC4 (struct pmu_battstate*,struct pmu_battstate*) ; 
 int FUNC5 (struct pmu_softc*,int /*<<< orphan*/ ,struct pmu_battstate*) ; 

__attribute__((used)) static void
FUNC6()
{
	struct pmu_softc *sc;
	struct pmu_battstate batt;
	struct pmu_battstate cur_batt;
	int error;

	sc = FUNC1(pmu);

	FUNC0(&cur_batt, sizeof(cur_batt));
	while (1) {
		FUNC2(curproc);
		error = FUNC5(sc, 0, &batt);
		FUNC4(&batt, &cur_batt);
		cur_batt = batt;
		FUNC3("pmu_batt", hz);
	}
}