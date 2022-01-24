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
struct sfxge_intr {scalar_t__ state; int /*<<< orphan*/  status; } ;
struct sfxge_softc {struct sfxge_intr intr; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  efsys_mem_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_INTR_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ SFXGE_INTR_INITIALIZED ; 
 scalar_t__ SFXGE_INTR_UNINITIALIZED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct sfxge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sfxge_softc*) ; 
 int FUNC4 (struct sfxge_softc*) ; 
 int FUNC5 (struct sfxge_softc*) ; 

int
FUNC6(struct sfxge_softc *sc)
{
	device_t dev;
	struct sfxge_intr *intr;
	efsys_mem_t *esmp;
	int rc;

	dev = sc->dev;
	intr = &sc->intr;
	esmp = &intr->status;

	FUNC0(intr->state == SFXGE_INTR_UNINITIALIZED,
	    ("Interrupts already initialized"));

	/* Try to setup MSI-X or MSI interrupts if available. */
	if ((rc = FUNC5(sc)) == 0)
		FUNC1(dev, "Using MSI-X interrupts\n");
	else if ((rc = FUNC4(sc)) == 0)
		FUNC1(dev, "Using MSI interrupts\n");
	else if ((rc = FUNC3(sc)) == 0) {
		FUNC1(dev, "Using fixed interrupts\n");
	} else {
		FUNC1(dev, "Couldn't setup interrupts\n");
		return (ENOMEM);
	}

	/* Set up DMA for interrupts. */
	if ((rc = FUNC2(sc, EFX_INTR_SIZE, esmp)) != 0)
		return (ENOMEM);

	intr->state = SFXGE_INTR_INITIALIZED;

	return (0);
}