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
typedef  int /*<<< orphan*/  uint8_t ;
struct spibus_ivar {scalar_t__ mode; int /*<<< orphan*/  cs; } ;
struct spi_command {int tx_cmd_sz; int rx_cmd_sz; int tx_data_sz; int rx_data_sz; scalar_t__ rx_data; scalar_t__ tx_data; scalar_t__ rx_cmd; scalar_t__ tx_cmd; } ;
struct gpio_spi_softc {int /*<<< orphan*/  sc_sclk; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_busdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct spibus_ivar* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPIBUS_MODE_CPHA ; 
 scalar_t__ SPIBUS_MODE_CPOL ; 
 struct gpio_spi_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gpio_spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gpio_spi_softc*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev, device_t child, struct spi_command *cmd)
{
	struct gpio_spi_softc *sc;
	uint8_t *buf_in, *buf_out;
	struct spibus_ivar *devi = FUNC2(child);
	int i;

	sc = FUNC3(dev);

	FUNC1(cmd->tx_cmd_sz == cmd->rx_cmd_sz, 
	    ("TX/RX command sizes should be equal"));
	FUNC1(cmd->tx_data_sz == cmd->rx_data_sz, 
	    ("TX/RX data sizes should be equal"));

	FUNC4(sc, devi->cs);

	/* Preset pins */
	if ((devi->mode == SPIBUS_MODE_CPOL) ||
	    (devi->mode == SPIBUS_MODE_CPHA)) {
		FUNC0(sc->sc_busdev, sc->sc_dev,
		    sc->sc_sclk, 1);
	} else {
		FUNC0(sc->sc_busdev, sc->sc_dev,
		    sc->sc_sclk, 0);
	}

	/*
	 * Transfer command
	 */
	buf_out = (uint8_t *)cmd->tx_cmd;
	buf_in = (uint8_t *)cmd->rx_cmd;

	for (i = 0; i < cmd->tx_cmd_sz; i++)
		buf_in[i] = FUNC6(sc, devi->cs, devi->mode, buf_out[i]);

	/*
	 * Receive/transmit data (depends on command)
	 */
	buf_out = (uint8_t *)cmd->tx_data;
	buf_in = (uint8_t *)cmd->rx_data;
	for (i = 0; i < cmd->tx_data_sz; i++)
		buf_in[i] = FUNC6(sc, devi->cs, devi->mode, buf_out[i]);

	/* Return pins to mode default */
	if ((devi->mode == SPIBUS_MODE_CPOL) ||
	    (devi->mode == SPIBUS_MODE_CPHA)) {
		FUNC0(sc->sc_busdev, sc->sc_dev,
		    sc->sc_sclk, 1);
	} else {
		FUNC0(sc->sc_busdev, sc->sc_dev,
		    sc->sc_sclk, 0);
	}

	FUNC5(sc, devi->cs);

	return (0);
}