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
struct sfxge_mcdi {scalar_t__ state; int /*<<< orphan*/  mem; int /*<<< orphan*/  transport; } ;
struct sfxge_softc {struct sfxge_mcdi mcdi; int /*<<< orphan*/ * enp; } ;
typedef  int /*<<< orphan*/  efx_nic_t ;
typedef  int /*<<< orphan*/  efx_mcdi_transport_t ;
typedef  int /*<<< orphan*/  efsys_mem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ SFXGE_MCDI_INITIALIZED ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_mcdi*) ; 
 int /*<<< orphan*/  FUNC2 (struct sfxge_mcdi*) ; 
 int /*<<< orphan*/  FUNC3 (struct sfxge_mcdi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct sfxge_softc *sc)
{
	struct sfxge_mcdi *mcdi;
	efx_nic_t *enp;
	efx_mcdi_transport_t *emtp;
	efsys_mem_t *esmp;

	enp = sc->enp;
	mcdi = &sc->mcdi;
	emtp = &mcdi->transport;
	esmp = &mcdi->mem;

	FUNC1(mcdi);
	FUNC0(mcdi->state == SFXGE_MCDI_INITIALIZED,
	    ("MCDI not initialized"));

	FUNC5(enp);
	FUNC4(emtp, sizeof(*emtp));

	FUNC3(mcdi);

	FUNC6(esmp);

	FUNC2(mcdi);
}