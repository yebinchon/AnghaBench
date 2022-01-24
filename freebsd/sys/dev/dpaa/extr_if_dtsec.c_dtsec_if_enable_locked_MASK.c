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
struct dtsec_softc {int /*<<< orphan*/  sc_dev; TYPE_1__* sc_ifnet; int /*<<< orphan*/  sc_txph; int /*<<< orphan*/  sc_rxph; int /*<<< orphan*/  sc_mach; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dtsec_softc*) ; 
 int EIO ; 
 int E_OK ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  e_COMM_MODE_RX_AND_TX ; 

__attribute__((used)) static int
FUNC4(struct dtsec_softc *sc)
{
	int error;

	FUNC0(sc);

	error = FUNC1(sc->sc_mach, e_COMM_MODE_RX_AND_TX);
	if (error != E_OK)
		return (EIO);

	error = FUNC2(sc->sc_rxph);
	if (error != E_OK)
		return (EIO);

	error = FUNC2(sc->sc_txph);
	if (error != E_OK)
		return (EIO);

	sc->sc_ifnet->if_drv_flags |= IFF_DRV_RUNNING;

	/* Refresh link state */
	FUNC3(sc->sc_dev);

	return (0);
}