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
struct malo_softc {int malo_invalid; int /*<<< orphan*/  malo_dmat; } ;
struct malo_pci_softc {scalar_t__ malo_msi; int /*<<< orphan*/ * malo_res_mem; int /*<<< orphan*/  malo_mem_spec; int /*<<< orphan*/ * malo_res_irq; int /*<<< orphan*/  malo_irq_spec; int /*<<< orphan*/ * malo_intrhand; struct malo_softc malo_sc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MALO_MSI_MESSAGES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct malo_pci_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct malo_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	int i;
	struct malo_pci_softc *psc = FUNC5(dev);
	struct malo_softc *sc = &psc->malo_sc;

	/* check if device was removed */
	sc->malo_invalid = !FUNC0(dev);

	FUNC6(sc);

	FUNC2(dev);

	if (psc->malo_msi == 0)
		FUNC4(dev, psc->malo_res_irq[0],
		    psc->malo_intrhand[0]);
	else {
		for (i = 0; i < MALO_MSI_MESSAGES; i++)
			FUNC4(dev, psc->malo_res_irq[i],
			    psc->malo_intrhand[i]);

		FUNC7(dev);
	}

	FUNC3(dev, psc->malo_irq_spec, psc->malo_res_irq);
	FUNC1(sc->malo_dmat);
	FUNC3(dev, psc->malo_mem_spec, psc->malo_res_mem);

	return (0);
}