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
struct apm_softc {scalar_t__ initialized; scalar_t__ suspending; } ;

/* Variables and functions */
 size_t APM_HOOK_RESUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct apm_softc apm_softc ; 
 int /*<<< orphan*/ * hook ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  power_resume ; 
 int /*<<< orphan*/  root_bus ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct apm_softc *sc = &apm_softc;

	if (sc == NULL || sc->initialized == 0 || sc->suspending == 0)
		return;

	sc->suspending = 0;
	FUNC2(hook[APM_HOOK_RESUME]);
	FUNC3(&Giant);
	FUNC0(root_bus);
	FUNC4(&Giant);
	FUNC1(power_resume);
}