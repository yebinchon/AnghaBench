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
struct sfxge_intr {scalar_t__ state; } ;
struct sfxge_softc {int /*<<< orphan*/  enp; struct sfxge_intr intr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ SFXGE_INTR_INITIALIZED ; 
 scalar_t__ SFXGE_INTR_STARTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sfxge_softc*) ; 

void
FUNC4(struct sfxge_softc *sc)
{
	struct sfxge_intr *intr;

	intr = &sc->intr;

	FUNC0(intr->state == SFXGE_INTR_STARTED,
	    ("Interrupts not started"));

	intr->state = SFXGE_INTR_INITIALIZED;

	/* Disable interrupts at the NIC */
	FUNC1(sc->enp);

	/* Disable interrupts at the bus */
	FUNC3(sc);

	/* Tear down common code interrupt bits. */
	FUNC2(sc->enp);
}