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
struct spi_command {scalar_t__ tx_cmd_sz; scalar_t__ rx_cmd_sz; scalar_t__ tx_data_sz; scalar_t__ rx_data_sz; } ;
struct intelspi_softc {int sc_flags; scalar_t__ sc_len; int /*<<< orphan*/  sc_dev; scalar_t__ sc_written; scalar_t__ sc_read; struct spi_command* sc_cmd; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CS_HIGH ; 
 int /*<<< orphan*/  CS_LOW ; 
 int EINTR ; 
 int EIO ; 
 int EWOULDBLOCK ; 
 int INTELSPI_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct intelspi_softc*) ; 
 int FUNC1 (struct intelspi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTELSPI_SSPREG_SSCR1 ; 
 int /*<<< orphan*/  FUNC2 (struct intelspi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct intelspi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int SSCR1_RIE ; 
 int SSCR1_TIE ; 
 int SSCR1_TINTE ; 
 struct intelspi_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC7 (struct intelspi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct intelspi_softc*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev, device_t child, struct spi_command *cmd)
{
	struct intelspi_softc *sc;
	int err;
	uint32_t sscr1;

	sc = FUNC5(dev);
	err = 0;

	FUNC4(cmd->tx_cmd_sz == cmd->rx_cmd_sz, 
	    ("TX/RX command sizes should be equal"));
	FUNC4(cmd->tx_data_sz == cmd->rx_data_sz, 
	    ("TX/RX data sizes should be equal"));

	FUNC0(sc);

	/* If the controller is in use wait until it is available. */
	while (sc->sc_flags & INTELSPI_BUSY) {
		err = FUNC9(dev, &sc->sc_mtx, 0, "intelspi", 0);
		if (err == EINTR) {
			FUNC2(sc);
			return (err);
		}
	}

	/* Now we have control over SPI controller. */
	sc->sc_flags = INTELSPI_BUSY;

	/* Save a pointer to the SPI command. */
	sc->sc_cmd = cmd;
	sc->sc_read = 0;
	sc->sc_written = 0;
	sc->sc_len = cmd->tx_cmd_sz + cmd->tx_data_sz;

	/* Enable CS */
	FUNC7(sc, CS_LOW);
	/* Transfer as much as possible to FIFOs */
	if (!FUNC8(sc)) {
		/* If FIFO is not large enough - enable interrupts */
		sscr1 = FUNC1(sc, INTELSPI_SSPREG_SSCR1);
		sscr1 |= (SSCR1_TIE | SSCR1_RIE | SSCR1_TINTE);
		FUNC3(sc, INTELSPI_SSPREG_SSCR1, sscr1);

		/* and wait for transaction to complete */
		err = FUNC9(dev, &sc->sc_mtx, 0, "intelspi", hz * 2);
	}

	/* de-asser CS */
	FUNC7(sc, CS_HIGH);

	/* Clear transaction details */
	sc->sc_cmd = NULL;
	sc->sc_read = 0;
	sc->sc_written = 0;
	sc->sc_len = 0;

	/* Make sure the SPI engine and interrupts are disabled. */
	sscr1 = FUNC1(sc, INTELSPI_SSPREG_SSCR1);
	sscr1 &= ~(SSCR1_TIE | SSCR1_RIE | SSCR1_TINTE);
	FUNC3(sc, INTELSPI_SSPREG_SSCR1, sscr1);

	/* Release the controller and wakeup the next thread waiting for it. */
	sc->sc_flags = 0;
	FUNC10(dev);
	FUNC2(sc);

	/*
	 * Check for transfer timeout.  The SPI controller doesn't
	 * return errors.
	 */
	if (err == EWOULDBLOCK) {
		FUNC6(sc->sc_dev, "transfer timeout\n");
		err = EIO;
	}

	return (err);
}