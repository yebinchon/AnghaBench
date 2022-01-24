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
struct sfxge_softc {scalar_t__ init_state; TYPE_1__* ifnet; int /*<<< orphan*/  enp; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct sfxge_softc*) ; 
 scalar_t__ SFXGE_REGISTERED ; 
 scalar_t__ SFXGE_STARTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct sfxge_softc*) ; 

__attribute__((used)) static void
FUNC7(struct sfxge_softc *sc)
{
	FUNC0(sc);

	if (sc->init_state != SFXGE_STARTED)
		return;

	sc->init_state = SFXGE_REGISTERED;

	/* Stop the transmitter. */
	FUNC6(sc);

	/* Stop the receiver. */
	FUNC5(sc);

	/* Stop the port. */
	FUNC4(sc);

	/* Stop processing events. */
	FUNC2(sc);

	/* Stop processing interrupts. */
	FUNC3(sc);

	FUNC1(sc->enp);

	sc->ifnet->if_drv_flags &= ~IFF_DRV_RUNNING;
}