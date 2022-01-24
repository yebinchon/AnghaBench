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
typedef  int uint32_t ;
struct rtwn_softc {scalar_t__ next_rom_addr; scalar_t__ efuse_maxlen; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int EFAULT ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R92C_EFUSE_CTRL ; 
 int /*<<< orphan*/  R92C_EFUSE_CTRL_ADDR ; 
 int /*<<< orphan*/  R92C_EFUSE_CTRL_DATA ; 
 int R92C_EFUSE_CTRL_VALID ; 
 int FUNC1 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*,int) ; 
 int FUNC4 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

int
FUNC6(struct rtwn_softc *sc, uint8_t *val)
{
	uint32_t reg;
	int ntries, error;

	if (sc->next_rom_addr >= sc->efuse_maxlen)
		return (EFAULT);

	reg = FUNC4(sc, R92C_EFUSE_CTRL);
	reg = FUNC1(reg, R92C_EFUSE_CTRL_ADDR, sc->next_rom_addr);
	reg &= ~R92C_EFUSE_CTRL_VALID;

	error = FUNC5(sc, R92C_EFUSE_CTRL, reg);
	if (error != 0)
		return (error);
	/* Wait for read operation to complete. */
	for (ntries = 0; ntries < 100; ntries++) {
		reg = FUNC4(sc, R92C_EFUSE_CTRL);
		if (reg & R92C_EFUSE_CTRL_VALID)
			break;
		FUNC3(sc, 10);
	}
	if (ntries == 100) {
		FUNC2(sc->sc_dev,
		    "could not read efuse byte at address 0x%x\n",
		    sc->next_rom_addr);
		return (ETIMEDOUT);
	}

	*val = FUNC0(reg, R92C_EFUSE_CTRL_DATA);
	sc->next_rom_addr++;

	return (0);
}