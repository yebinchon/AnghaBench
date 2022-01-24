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
struct TYPE_2__ {int /*<<< orphan*/  sc_bus; int /*<<< orphan*/ ** sc_irq_res; int /*<<< orphan*/ ** sc_intr_hdl; } ;
struct octusb_octeon_softc {TYPE_1__ sc_dci; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int OCTUSB_MAX_PORTS ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct octusb_octeon_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct octusb_octeon_softc *sc = FUNC4(dev);
	int err;
	int nports;
	int i;

	/* during module unload there are lots of children leftover */
	FUNC3(dev);

	if (sc->sc_dci.sc_irq_res[0] && sc->sc_dci.sc_intr_hdl[0])
		/*
	 	 * only call octusb_octeon_uninit() after octusb_octeon_init()
	 	 */
		FUNC5(&sc->sc_dci);

	nports = FUNC2();
	if (nports > OCTUSB_MAX_PORTS)
		FUNC6("octusb: too many USB ports %d", nports);
	for (i = 0; i < nports; i++) {
		if (sc->sc_dci.sc_irq_res[i] && sc->sc_dci.sc_intr_hdl[i]) {
			err = FUNC1(dev, sc->sc_dci.sc_irq_res[i],
			    sc->sc_dci.sc_intr_hdl[i]);
			sc->sc_dci.sc_intr_hdl[i] = NULL;
		}
		if (sc->sc_dci.sc_irq_res[i]) {
			FUNC0(dev, SYS_RES_IRQ, 0,
			    sc->sc_dci.sc_irq_res[i]);
			sc->sc_dci.sc_irq_res[i] = NULL;
		}
	}
	FUNC7(&sc->sc_dci.sc_bus, NULL);

	return (0);
}