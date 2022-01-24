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
typedef  int /*<<< orphan*/  uint16_t ;
struct rsu_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R92S_EFUSE_CTRL ; 
 int /*<<< orphan*/  R92S_EFUSE_CTRL_ADDR ; 
 int /*<<< orphan*/  R92S_EFUSE_CTRL_DATA ; 
 int R92S_EFUSE_CTRL_VALID ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rsu_softc*,int) ; 
 int FUNC4 (struct rsu_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rsu_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint8_t
FUNC6(struct rsu_softc *sc, uint16_t addr)
{
	uint32_t reg;
	int ntries;

	reg = FUNC4(sc, R92S_EFUSE_CTRL);
	reg = FUNC1(reg, R92S_EFUSE_CTRL_ADDR, addr);
	reg &= ~R92S_EFUSE_CTRL_VALID;
	FUNC5(sc, R92S_EFUSE_CTRL, reg);
	/* Wait for read operation to complete. */
	for (ntries = 0; ntries < 100; ntries++) {
		reg = FUNC4(sc, R92S_EFUSE_CTRL);
		if (reg & R92S_EFUSE_CTRL_VALID)
			return (FUNC0(reg, R92S_EFUSE_CTRL_DATA));
		FUNC3(sc, 1);
	}
	FUNC2(sc->sc_dev,
	    "could not read efuse byte at address 0x%x\n", addr);
	return (0xff);
}