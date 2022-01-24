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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct spi_command {int tx_cmd_sz; int rx_cmd_sz; scalar_t__ rx_cmd; scalar_t__ tx_cmd; int /*<<< orphan*/  rx_data_sz; int /*<<< orphan*/  rx_data; } ;
struct ar5315_spi_softc {int sc_debug; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ARSPI_CTL_BUSY ; 
 int ARSPI_CTL_RXCNT_MASK ; 
 int ARSPI_CTL_RXCNT_SHIFT ; 
 int ARSPI_CTL_START ; 
 int ARSPI_CTL_TXCNT_MASK ; 
 int ARSPI_CTL_TXCNT_SHIFT ; 
 int /*<<< orphan*/  ARSPI_REG_CTL ; 
 int /*<<< orphan*/  ARSPI_REG_DATA ; 
 int /*<<< orphan*/  ARSPI_REG_OPCODE ; 
 int SPIBUS_CS_HIGH ; 
 int FUNC0 (struct ar5315_spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar5315_spi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ar5315_spi_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ar5315_spi_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ar5315_spi_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC8(device_t dev, device_t child, struct spi_command *cmd)
{
	struct ar5315_spi_softc *sc;
	uint8_t *buf_in, *buf_out;
	int lin, lout;
	uint32_t ctl, cnt, op, rdat, cs;
	int i, j;

	sc = FUNC5(dev);

	if (sc->sc_debug & 0x8000)
		FUNC6("ar5315_spi_transfer: CMD ");

	FUNC7(child, &cs);

	cs &= ~SPIBUS_CS_HIGH;

	/* Open SPI controller interface */
	FUNC2(sc, cs);

	do {
		ctl = FUNC0(sc, ARSPI_REG_CTL);
	} while (ctl & ARSPI_CTL_BUSY);

	/*
	 * Transfer command
	 */
	buf_out = (uint8_t *)cmd->tx_cmd;
	op = buf_out[0];
	if(op == 0x0b) {
		int offset = buf_out[1] << 16 | buf_out[2] << 8 | buf_out[3];
		FUNC4(offset, cmd->rx_data, cmd->rx_data_sz);
		return (0);
	}
	do {
		ctl = FUNC0(sc, ARSPI_REG_CTL);
	} while (ctl & ARSPI_CTL_BUSY);
	if (sc->sc_debug & 0x8000) {
		FUNC6("%08x ", op);
		FUNC6("tx_cmd_sz=%d rx_cmd_sz=%d ", cmd->tx_cmd_sz,
			cmd->rx_cmd_sz);
		if(cmd->tx_cmd_sz != 1) {
			FUNC6("%08x ", *((uint32_t *)cmd->tx_cmd));
			FUNC6("%08x ", *((uint32_t *)cmd->tx_cmd + 1));
		}
	}
	FUNC1(sc, ARSPI_REG_OPCODE, op);

	/* clear all of the tx and rx bits */
	ctl &= ~(ARSPI_CTL_TXCNT_MASK | ARSPI_CTL_RXCNT_MASK);

	/* now set txcnt */
	cnt = 1;

	ctl |= (cnt << ARSPI_CTL_TXCNT_SHIFT);

	cnt = 24;
	/* now set txcnt */
	if(cmd->rx_cmd_sz < 24)
		cnt = cmd->rx_cmd_sz;
	ctl |= (cnt << ARSPI_CTL_RXCNT_SHIFT);

	ctl |= ARSPI_CTL_START;

	FUNC1(sc, ARSPI_REG_CTL, ctl);

	if(op == 0x0b)
		FUNC1(sc, ARSPI_REG_DATA, 0);
	if (sc->sc_debug & 0x8000)
		FUNC6("\nDATA ");
	/*
	 * Receive/transmit data (depends on  command)
	 */
//	buf_out = (uint8_t *)cmd->tx_data;
	buf_in = (uint8_t *)cmd->rx_cmd;
//	lout = cmd->tx_data_sz;
	lin = cmd->rx_cmd_sz;
	if (sc->sc_debug & 0x8000)
		FUNC6("t%d r%d ", lout, lin);
	for(i = 0; i <= (cnt - 1) / 4; ++i) {
		do {
			ctl = FUNC0(sc, ARSPI_REG_CTL);
		} while (ctl & ARSPI_CTL_BUSY);

		rdat = FUNC0(sc, ARSPI_REG_DATA);
		if (sc->sc_debug & 0x8000)
			FUNC6("I%08x ", rdat);

		for(j = 0; j < 4; ++j) {
			buf_in[i * 4 + j + 1] = 0xff & (rdat >> (8 * j));
			if(i * 4 + j  + 2 == cnt)
				break;
		}
	}

	FUNC3(sc, cs);
	/*
	 * Close SPI controller interface, restore flash memory mapped access.
	 */
	if (sc->sc_debug & 0x8000)
		FUNC6("\n");

	return (0);
}