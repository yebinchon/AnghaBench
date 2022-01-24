#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  esm_base; } ;
struct sfxge_intr {scalar_t__ state; int /*<<< orphan*/  type; TYPE_1__ status; } ;
struct sfxge_softc {int /*<<< orphan*/  enp; struct sfxge_intr intr; } ;
typedef  TYPE_1__ efsys_mem_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_INTR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ SFXGE_INTR_INITIALIZED ; 
 scalar_t__ SFXGE_INTR_STARTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sfxge_softc*) ; 

int
FUNC6(struct sfxge_softc *sc)
{
	struct sfxge_intr *intr;
	efsys_mem_t *esmp;
	int rc;

	intr = &sc->intr;
	esmp = &intr->status;

	FUNC0(intr->state == SFXGE_INTR_INITIALIZED,
	    ("Interrupts not initialized"));

	/* Zero the memory. */
	(void)FUNC4(esmp->esm_base, 0, EFX_INTR_SIZE);

	/* Initialize common code interrupt bits. */
	(void)FUNC3(sc->enp, intr->type, esmp);

	/* Enable interrupts at the bus */
	if ((rc = FUNC5(sc)) != 0)
		goto fail;

	intr->state = SFXGE_INTR_STARTED;

	/* Enable interrupts at the NIC */
	FUNC1(sc->enp);

	return (0);

fail:
	/* Tear down common code interrupt bits. */
	FUNC2(sc->enp);

	intr->state = SFXGE_INTR_INITIALIZED;

	return (rc);
}