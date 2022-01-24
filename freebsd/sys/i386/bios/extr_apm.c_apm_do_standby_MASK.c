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
struct apm_softc {scalar_t__ initialized; scalar_t__ standby_countdown; scalar_t__ standbys; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMST_STANDBY ; 
 scalar_t__ apm_op_inprog ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct apm_softc apm_softc ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void)
{
	struct apm_softc *sc = &apm_softc;

	if (sc == NULL || sc->initialized == 0)
		return;

	apm_op_inprog = 0;
	sc->standbys = sc->standby_countdown = 0;

	/*
	 * As far as standby, we don't need to execute
	 * all of suspend hooks.
	 */
	if (FUNC1(PMST_STANDBY) == 0)
		FUNC0();
	return;
}