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
struct spigen_softc {int /*<<< orphan*/  sc_mtx; scalar_t__ sc_cdev; scalar_t__ sc_adev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct spigen_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct spigen_softc *sc;

	sc = FUNC1(dev);

#ifdef SPIGEN_LEGACY_CDEVNAME
	if (sc->sc_adev)
		destroy_dev(sc->sc_adev);
#endif

	if (sc->sc_cdev)
		FUNC0(sc->sc_cdev);
	
	FUNC2(&sc->sc_mtx);

	return (0);
}