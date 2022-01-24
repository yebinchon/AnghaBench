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
typedef  size_t uint32_t ;
struct spi_command {size_t tx_cmd_sz; scalar_t__ tx_data; scalar_t__ tx_cmd; } ;
struct intelspi_softc {scalar_t__ sc_written; scalar_t__ sc_len; struct spi_command* sc_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intelspi_softc*) ; 
 int /*<<< orphan*/  INTELSPI_SSPREG_SSDR ; 
 int /*<<< orphan*/  FUNC1 (struct intelspi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intelspi_softc*) ; 

__attribute__((used)) static void
FUNC3(struct intelspi_softc *sc)
{
	struct spi_command *cmd;
	uint32_t written;
	uint8_t *data;

	FUNC0(sc);

	cmd = sc->sc_cmd;
	while (sc->sc_written < sc->sc_len &&
	    !FUNC2(sc)) {
		data = (uint8_t *)cmd->tx_cmd;
		written = sc->sc_written++;

		if (written >= cmd->tx_cmd_sz) {
			data = (uint8_t *)cmd->tx_data;
			written -= cmd->tx_cmd_sz;
		}
		FUNC1(sc, INTELSPI_SSPREG_SSDR, data[written]);
	}
}