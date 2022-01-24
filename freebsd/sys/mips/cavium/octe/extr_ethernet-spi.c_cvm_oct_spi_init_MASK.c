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
struct octebus_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/ * sc_spi_irq; } ;
struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_2__ {int port; int /*<<< orphan*/  poll; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ cvm_oct_private_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  OCTEON_IRQ_RML ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cvm_oct_spi_poll ; 
 int /*<<< orphan*/  cvm_oct_spi_rml_interrupt ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct octebus_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ number_spi_ports ; 

int FUNC8(struct ifnet *ifp)
{
	struct octebus_softc *sc;
	cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;
	int error;
	int rid;

	if (number_spi_ports == 0) {
		sc = FUNC6(FUNC5(priv->dev));

		rid = 0;
		sc->sc_spi_irq = FUNC1(sc->sc_dev, SYS_RES_IRQ,
						    &rid, OCTEON_IRQ_RML,
						    OCTEON_IRQ_RML, 1,
						    RF_ACTIVE);
		if (sc->sc_spi_irq == NULL) {
			FUNC7(sc->sc_dev, "could not allocate SPI irq");
			return ENXIO;
		}

		error = FUNC2(sc->sc_dev, sc->sc_spi_irq,
				       INTR_TYPE_NET | INTR_MPSAFE,
				       cvm_oct_spi_rml_interrupt, NULL,
				       &number_spi_ports, NULL);
		if (error != 0) {
			FUNC7(sc->sc_dev, "could not setup SPI irq");
			return error;
		}
	}
	number_spi_ports++;

	if ((priv->port == 0) || (priv->port == 16)) {
		FUNC4(FUNC0(priv->port));
		priv->poll = cvm_oct_spi_poll;
	}
	if (FUNC3(ifp) != 0)
	    return ENXIO;
	return 0;
}