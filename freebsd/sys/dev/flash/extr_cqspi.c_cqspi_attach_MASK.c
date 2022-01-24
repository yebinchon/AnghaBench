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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {struct cqspi_softc* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct cqspi_softc {TYPE_1__ config_intrhook; int /*<<< orphan*/ * xchan_rx; int /*<<< orphan*/ * xchan_tx; int /*<<< orphan*/  dev; int /*<<< orphan*/  ih_rx; int /*<<< orphan*/  ih_tx; int /*<<< orphan*/ * xdma_rx; int /*<<< orphan*/ * xdma_tx; int /*<<< orphan*/  ih; int /*<<< orphan*/ * res; int /*<<< orphan*/  sram_phys; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  FUNC0 (struct cqspi_softc*) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  MAXPHYS ; 
 int /*<<< orphan*/  TX_QUEUE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct cqspi_softc*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  cqspi_delayed_attach ; 
 int /*<<< orphan*/  FUNC4 (struct cqspi_softc*) ; 
 int /*<<< orphan*/  cqspi_intr ; 
 int /*<<< orphan*/  cqspi_spec ; 
 int /*<<< orphan*/  cqspi_xdma_rx_intr ; 
 int /*<<< orphan*/  cqspi_xdma_tx_intr ; 
 struct cqspi_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct cqspi_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct cqspi_softc *sc;
	uint32_t caps;
	int error;

	sc = FUNC5(dev);
	sc->dev = dev;

	if (FUNC1(dev, cqspi_spec, sc->res)) {
		FUNC6(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC8(sc->res[0]);
	sc->bsh = FUNC7(sc->res[0]);

	sc->sram_phys = FUNC9(sc->res[1]);

	/* Setup interrupt handlers */
	if (FUNC2(sc->dev, sc->res[2], INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, cqspi_intr, sc, &sc->ih)) {
		FUNC6(sc->dev, "Unable to setup intr\n");
		return (ENXIO);
	}

	FUNC0(sc);

	caps = 0;

	/* Get xDMA controller. */
	sc->xdma_tx = FUNC11(sc->dev, "tx");
	if (sc->xdma_tx == NULL) {
		FUNC6(dev, "Can't find DMA controller.\n");
		return (ENXIO);
	}

	sc->xdma_rx = FUNC11(sc->dev, "rx");
	if (sc->xdma_rx == NULL) {
		FUNC6(dev, "Can't find DMA controller.\n");
		return (ENXIO);
	}

	/* Alloc xDMA virtual channels. */
	sc->xchan_tx = FUNC10(sc->xdma_tx, caps);
	if (sc->xchan_tx == NULL) {
		FUNC6(dev, "Can't alloc virtual DMA channel.\n");
		return (ENXIO);
	}

	sc->xchan_rx = FUNC10(sc->xdma_rx, caps);
	if (sc->xchan_rx == NULL) {
		FUNC6(dev, "Can't alloc virtual DMA channel.\n");
		return (ENXIO);
	}

	/* Setup xDMA interrupt handlers. */
	error = FUNC13(sc->xchan_tx, cqspi_xdma_tx_intr,
	    sc, &sc->ih_tx);
	if (error) {
		FUNC6(sc->dev,
		    "Can't setup xDMA interrupt handler.\n");
		return (ENXIO);
	}

	error = FUNC13(sc->xchan_rx, cqspi_xdma_rx_intr,
	    sc, &sc->ih_rx);
	if (error) {
		FUNC6(sc->dev,
		    "Can't setup xDMA interrupt handler.\n");
		return (ENXIO);
	}

	FUNC12(sc->xchan_tx, TX_QUEUE_SIZE, MAXPHYS, 8, 16, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR);
	FUNC12(sc->xchan_rx, TX_QUEUE_SIZE, MAXPHYS, 8, 16, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR);

	FUNC4(sc);

	sc->config_intrhook.ich_func = cqspi_delayed_attach;
	sc->config_intrhook.ich_arg = sc;
	if (FUNC3(&sc->config_intrhook) != 0) {
		FUNC6(dev, "config_intrhook_establish failed\n");
		return (ENOMEM);
	}

	return (0);
}