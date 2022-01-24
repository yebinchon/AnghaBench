#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sfxge_softc {scalar_t__ init_state; int /*<<< orphan*/  dev; int /*<<< orphan*/  enp; TYPE_1__* ifnet; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct sfxge_softc*) ; 
 scalar_t__ SFXGE_REGISTERED ; 
 scalar_t__ SFXGE_STARTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct sfxge_softc*) ; 
 int FUNC6 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct sfxge_softc*) ; 
 int FUNC8 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct sfxge_softc*) ; 
 int FUNC10 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct sfxge_softc*) ; 
 int FUNC12 (struct sfxge_softc*) ; 
 int FUNC13 (struct sfxge_softc*) ; 

__attribute__((used)) static int
FUNC14(struct sfxge_softc *sc)
{
	int rc;

	FUNC0(sc);

	if (sc->init_state == SFXGE_STARTED)
		return (0);

	if (sc->init_state != SFXGE_REGISTERED) {
		rc = EINVAL;
		goto fail;
	}

	/* Set required resource limits */
	if ((rc = FUNC12(sc)) != 0)
		goto fail;

	if ((rc = FUNC3(sc->enp)) != 0)
		goto fail;

	/* Start processing interrupts. */
	if ((rc = FUNC6(sc)) != 0)
		goto fail2;

	/* Start processing events. */
	if ((rc = FUNC4(sc)) != 0)
		goto fail3;

	/* Fire up the port. */
	if ((rc = FUNC8(sc)) != 0)
		goto fail4;

	/* Start the receiver side. */
	if ((rc = FUNC10(sc)) != 0)
		goto fail5;

	/* Start the transmitter side. */
	if ((rc = FUNC13(sc)) != 0)
		goto fail6;

	sc->init_state = SFXGE_STARTED;

	/* Tell the stack we're running. */
	sc->ifnet->if_drv_flags |= IFF_DRV_RUNNING;
	sc->ifnet->if_drv_flags &= ~IFF_DRV_OACTIVE;

	return (0);

fail6:
	FUNC11(sc);

fail5:
	FUNC9(sc);

fail4:
	FUNC5(sc);

fail3:
	FUNC7(sc);

fail2:
	FUNC2(sc->enp);

fail:
	FUNC1(sc->dev, "sfxge_start: %d\n", rc);

	return (rc);
}