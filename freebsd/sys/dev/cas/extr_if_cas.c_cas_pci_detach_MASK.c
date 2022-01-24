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
struct cas_softc {int /*<<< orphan*/ * sc_res; int /*<<< orphan*/  sc_ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cas_softc*) ; 
 size_t CAS_RES_INTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cas_softc*) ; 
 int /*<<< orphan*/  cas_pci_res_spec ; 
 struct cas_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct cas_softc *sc;

	sc = FUNC4(dev);
	FUNC2(dev, sc->sc_res[CAS_RES_INTR], sc->sc_ih);
	FUNC3(sc);
	FUNC0(sc);
	FUNC1(dev, cas_pci_res_spec, sc->sc_res);
	return (0);
}