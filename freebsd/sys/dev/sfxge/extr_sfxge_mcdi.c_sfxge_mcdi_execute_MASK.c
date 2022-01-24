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
typedef  scalar_t__ uint32_t ;
struct sfxge_mcdi {scalar_t__ state; } ;
struct sfxge_softc {int /*<<< orphan*/  enp; struct sfxge_mcdi mcdi; } ;
typedef  int /*<<< orphan*/  efx_mcdi_req_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ SFXGE_MCDI_INITIALIZED ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_mcdi*) ; 
 int /*<<< orphan*/  FUNC2 (struct sfxge_mcdi*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sfxge_softc*,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(void *arg, efx_mcdi_req_t *emrp)
{
	struct sfxge_softc *sc;
	struct sfxge_mcdi *mcdi;
	uint32_t timeout_us = 0;

	sc = (struct sfxge_softc *)arg;
	mcdi = &sc->mcdi;

	FUNC1(mcdi);

	FUNC0(mcdi->state == SFXGE_MCDI_INITIALIZED,
	    ("MCDI not initialized"));

	/* Issue request and poll for completion. */
	FUNC3(sc->enp, emrp, &timeout_us);
	FUNC0(timeout_us > 0, ("MCDI timeout not initialized"));

	FUNC4(sc->enp, emrp, B_FALSE);
	FUNC5(sc, timeout_us);

	FUNC2(mcdi);
}