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
typedef  int uint32_t ;
typedef  int u_long ;
struct spi_command {scalar_t__ tx_cmd_sz; scalar_t__ rx_cmd_sz; scalar_t__ tx_data_sz; scalar_t__ rx_data_sz; } ;
struct fsl_espi_softc {int sc_num_cs; int sc_flags; scalar_t__ sc_len; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_mtx; scalar_t__ sc_written; scalar_t__ sc_read; struct spi_command* sc_cmd; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ESPI_CSMODE_CI ; 
 int ESPI_CSMODE_CP ; 
 int FUNC1 (int) ; 
 int ESPI_CSMODE_DIV16 ; 
 int FUNC2 (int) ; 
 int ESPI_CSMODE_PM_S ; 
 int ESPI_CSMODE_POL ; 
 int ESPI_CSMODE_REV ; 
 int /*<<< orphan*/  ESPI_SPCOM ; 
 int ESPI_SPCOM_CS_S ; 
 scalar_t__ ESPI_SPCOM_TRANLEN_M ; 
 int ESPI_SPIE_DON ; 
 int ESPI_SPIE_RXF ; 
 int ESPI_SPIE_TXE ; 
 int /*<<< orphan*/  ESPI_SPIM ; 
 int EWOULDBLOCK ; 
 int FSL_ESPI_BUSY ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_espi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsl_espi_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsl_espi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int SPIBUS_CS_HIGH ; 
 int SPIBUS_MODE_CPHA ; 
 int SPIBUS_MODE_CPOL ; 
 int SPIBUS_MODE_CPOL_CPHA ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct fsl_espi_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC10 (int,int) ; 
 int hz ; 
 int FUNC11 (int,int) ; 
 int FUNC12 () ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(device_t dev, device_t child, struct spi_command *cmd)
{
	struct fsl_espi_softc *sc;
	u_long plat_clk;
	uint32_t csmode, spi_clk, spi_mode;
	int cs, err, pm;

	sc = FUNC8(dev);

	FUNC6(cmd->tx_cmd_sz == cmd->rx_cmd_sz, 
	    ("TX/RX command sizes should be equal"));
	FUNC6(cmd->tx_data_sz == cmd->rx_data_sz, 
	    ("TX/RX data sizes should be equal"));

	/* Restrict transmit length to command max length */
	if (cmd->tx_cmd_sz + cmd->tx_data_sz > ESPI_SPCOM_TRANLEN_M + 1) {
		return (EINVAL);
	}

	/* Get the proper chip select for this child. */
	FUNC15(child, &cs);
	if (cs < 0 || cs > sc->sc_num_cs) {
		FUNC9(dev,
		    "Invalid chip select %d requested by %s\n", cs,
		    FUNC7(child));
		return (EINVAL);
	}
	FUNC14(child, &spi_clk);
	FUNC16(child, &spi_mode);

	FUNC3(sc);

	/* If the controller is in use wait until it is available. */
	while (sc->sc_flags & FSL_ESPI_BUSY)
		FUNC13(dev, &sc->sc_mtx, 0, "fsl_espi", 0);

	/* Now we have control over SPI controller. */
	sc->sc_flags = FSL_ESPI_BUSY;

	/* Save a pointer to the SPI command. */
	sc->sc_cmd = cmd;
	sc->sc_read = 0;
	sc->sc_written = 0;
	sc->sc_len = cmd->tx_cmd_sz + cmd->tx_data_sz;

	plat_clk = FUNC12();
	spi_clk = FUNC11(spi_clk, plat_clk / (16 * 16));
	if (plat_clk == 0) {
		FUNC9(dev,
		    "unable to get platform clock, giving up.\n");
		return (EINVAL);
	}
	csmode = 0;
	if (plat_clk > spi_clk * 16 * 2) {
		csmode |= ESPI_CSMODE_DIV16;
		plat_clk /= 16;
	}
	pm = FUNC10(plat_clk, spi_clk * 2) - 1;
	if (pm < 0)
		pm = 1;
	if (pm > 15)
		pm = 15;

	csmode |= (pm << ESPI_CSMODE_PM_S);
	csmode |= ESPI_CSMODE_REV;
	if (spi_mode == SPIBUS_MODE_CPOL || spi_mode == SPIBUS_MODE_CPOL_CPHA)
		csmode |= ESPI_CSMODE_CI;
	if (spi_mode == SPIBUS_MODE_CPHA || spi_mode == SPIBUS_MODE_CPOL_CPHA)
		csmode |= ESPI_CSMODE_CP;
	if (!(cs & SPIBUS_CS_HIGH))
		csmode |= ESPI_CSMODE_POL;
	csmode |= FUNC2(7);/* Only deal with 8-bit characters. */
	csmode |= FUNC1(1); /* XXX: Make this configurable? */
	/* Configure transaction */
	FUNC5(sc, ESPI_SPCOM, (cs << ESPI_SPCOM_CS_S) | (sc->sc_len - 1));
	FUNC5(sc, FUNC0(cs), csmode);
	/* Enable interrupts we need. */
	FUNC5(sc, ESPI_SPIM,
	    ESPI_SPIE_TXE | ESPI_SPIE_DON | ESPI_SPIE_RXF);

	/* Wait for the transaction to complete. */
	err = FUNC13(dev, &sc->sc_mtx, 0, "fsl_espi", hz * 2);
	FUNC5(sc, ESPI_SPIM, 0);

	/* Release the controller and wakeup the next thread waiting for it. */
	sc->sc_flags = 0;
	FUNC17(dev);
	FUNC4(sc);

	/*
	 * Check for transfer timeout.  The SPI controller doesn't
	 * return errors.
	 */
	if (err == EWOULDBLOCK) {
		FUNC9(sc->sc_dev, "SPI error\n");
		err = EIO;
	}

	return (err);
}