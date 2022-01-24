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
struct auxio_softc {int sc_flags; int /*<<< orphan*/  sc_nauxio; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AUXIO_EBUS ; 
 int AUXIO_LEDONLY ; 
 int /*<<< orphan*/  FUNC0 (struct auxio_softc*) ; 
 int /*<<< orphan*/  AUXIO_PCIO_NREG ; 
 int FUNC1 (struct auxio_softc*) ; 
 struct auxio_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct auxio_softc *sc;

	sc = FUNC2(dev);
	sc->sc_dev = dev;

	FUNC0(sc);
	sc->sc_nauxio = AUXIO_PCIO_NREG;
	sc->sc_flags = AUXIO_LEDONLY | AUXIO_EBUS;

	return(FUNC1(sc));
}