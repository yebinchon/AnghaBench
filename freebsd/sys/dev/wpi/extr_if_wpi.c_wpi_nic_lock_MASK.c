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
struct wpi_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  WPI_GP_CNTRL ; 
 int WPI_GP_CNTRL_MAC_ACCESS_ENA ; 
 int /*<<< orphan*/  WPI_GP_CNTRL_MAC_ACCESS_REQ ; 
 int WPI_GP_CNTRL_SLEEP ; 
 int FUNC1 (struct wpi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct wpi_softc *sc)
{
	int ntries;

	/* Request exclusive access to NIC. */
	FUNC2(sc, WPI_GP_CNTRL, WPI_GP_CNTRL_MAC_ACCESS_REQ);

	/* Spin until we actually get the lock. */
	for (ntries = 0; ntries < 1000; ntries++) {
		if ((FUNC1(sc, WPI_GP_CNTRL) &
		    (WPI_GP_CNTRL_MAC_ACCESS_ENA | WPI_GP_CNTRL_SLEEP)) ==
		    WPI_GP_CNTRL_MAC_ACCESS_ENA)
			return 0;
		FUNC0(10);
	}

	FUNC3(sc->sc_dev, "could not lock memory\n");

	return ETIMEDOUT;
}