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
typedef  int u_int ;
struct fsl_pcib_softc {int /*<<< orphan*/  sc_cfg_mtx; int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; scalar_t__ sc_pcie; } ;

/* Variables and functions */
 int CONFIG_ACCESS_ENABLE ; 
 int REG_CFG_ADDR ; 
 int REG_CFG_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct fsl_pcib_softc *sc, u_int bus, u_int slot, u_int func,
    u_int reg, uint32_t data, int bytes)
{
	uint32_t addr;

	addr = CONFIG_ACCESS_ENABLE;
	addr |= (bus & 0xff) << 16;
	addr |= (slot & 0x1f) << 11;
	addr |= (func & 0x7) << 8;
	addr |= reg & 0xfc;
	if (sc->sc_pcie)
		addr |= (reg & 0xf00) << 16;

	FUNC5(&sc->sc_cfg_mtx);
	FUNC2(sc->sc_bst, sc->sc_bsh, REG_CFG_ADDR, addr);

	switch (bytes) {
	case 1:
		FUNC0(sc->sc_bst, sc->sc_bsh,
		    REG_CFG_DATA + (reg & 3), data);
		break;
	case 2:
		FUNC1(sc->sc_bst, sc->sc_bsh,
		    REG_CFG_DATA + (reg & 2), FUNC3(data));
		break;
	case 4:
		FUNC2(sc->sc_bst, sc->sc_bsh,
		    REG_CFG_DATA, FUNC4(data));
		break;
	}
	FUNC6(&sc->sc_cfg_mtx);
}