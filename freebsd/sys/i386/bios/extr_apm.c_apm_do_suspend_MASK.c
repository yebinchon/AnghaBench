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
struct apm_softc {scalar_t__ initialized; int suspending; scalar_t__ suspend_countdown; scalar_t__ suspends; } ;

/* Variables and functions */
 size_t APM_HOOK_RESUME ; 
 size_t APM_HOOK_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  PMST_SUSPEND ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ apm_op_inprog ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct apm_softc apm_softc ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * hook ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  power_resume ; 
 int /*<<< orphan*/  power_suspend ; 
 int /*<<< orphan*/  root_bus ; 

__attribute__((used)) static void
FUNC8(void)
{
	struct apm_softc *sc = &apm_softc;
	int error;

	if (sc == NULL || sc->initialized == 0)
		return;

	apm_op_inprog = 0;
	sc->suspends = sc->suspend_countdown = 0;

	FUNC2(power_suspend);

	/*
	 * Be sure to hold Giant across DEVICE_SUSPEND/RESUME since
	 * non-MPSAFE drivers need this.
	 */
	FUNC6(&Giant);
	error = FUNC1(root_bus);
	if (error)
		goto backout;

	FUNC3(hook[APM_HOOK_SUSPEND]);
	if (FUNC5(PMST_SUSPEND) == 0) {
		sc->suspending = 1;
		FUNC4();
		FUNC7(&Giant);
		return;
	}

	/* Failure, 'resume' the system again */
	FUNC3(hook[APM_HOOK_RESUME]);
	FUNC0(root_bus);
backout:
	FUNC7(&Giant);
	FUNC2(power_resume);
}