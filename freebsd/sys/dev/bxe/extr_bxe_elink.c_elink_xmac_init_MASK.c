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
typedef  scalar_t__ uint32_t ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 scalar_t__ CHIP_NUM_57840_2_20 ; 
 scalar_t__ CHIP_NUM_57840_4_10 ; 
 scalar_t__ CHIP_NUM_57840_OBS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*) ; 
 scalar_t__ ELINK_SPEED_10000 ; 
 scalar_t__ GRCBASE_MISC ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_2_CLEAR ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_2_SET ; 
 int MISC_REGISTERS_RESET_REG_2_XMAC ; 
 int MISC_REGISTERS_RESET_REG_2_XMAC_SOFT ; 
 int /*<<< orphan*/  MISC_REG_RESET_REG_2 ; 
 scalar_t__ MISC_REG_XMAC_CORE_PORT_MODE ; 
 scalar_t__ MISC_REG_XMAC_PHY_PORT_MODE ; 
 int FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,scalar_t__,int) ; 
 scalar_t__ FUNC5 (struct bxe_softc*) ; 

__attribute__((used)) static void FUNC6(struct elink_params *params, uint32_t max_speed)
{
	struct bxe_softc *sc = params->sc;
	uint32_t is_port4mode = FUNC5(sc);

	/* In 4-port mode, need to set the mode only once, so if XMAC is
	 * already out of reset, it means the mode has already been set,
	 * and it must not* reset the XMAC again, since it controls both
	 * ports of the path
	 */

	if (((FUNC0(sc) == CHIP_NUM_57840_4_10) ||
	     (FUNC0(sc) == CHIP_NUM_57840_2_20) ||
	     (FUNC0(sc) == CHIP_NUM_57840_OBS)) &&
	    is_port4mode &&
	    (FUNC3(sc, MISC_REG_RESET_REG_2) &
	     MISC_REGISTERS_RESET_REG_2_XMAC)) {
		FUNC2(sc,
		   "XMAC already out of reset in 4-port mode\n");
		return;
	}

	/* Hard reset */
	FUNC4(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_CLEAR,
	       MISC_REGISTERS_RESET_REG_2_XMAC);
	FUNC1(1000 * 1);

	FUNC4(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_SET,
	       MISC_REGISTERS_RESET_REG_2_XMAC);
	if (is_port4mode) {
		FUNC2(sc, "Init XMAC to 2 ports x 10G per path\n");

		/* Set the number of ports on the system side to up to 2 */
		FUNC4(sc, MISC_REG_XMAC_CORE_PORT_MODE, 1);

		/* Set the number of ports on the Warp Core to 10G */
		FUNC4(sc, MISC_REG_XMAC_PHY_PORT_MODE, 3);
	} else {
		/* Set the number of ports on the system side to 1 */
		FUNC4(sc, MISC_REG_XMAC_CORE_PORT_MODE, 0);
		if (max_speed == ELINK_SPEED_10000) {
			FUNC2(sc,
			   "Init XMAC to 10G x 1 port per path\n");
			/* Set the number of ports on the Warp Core to 10G */
			FUNC4(sc, MISC_REG_XMAC_PHY_PORT_MODE, 3);
		} else {
			FUNC2(sc,
			   "Init XMAC to 20G x 2 ports per path\n");
			/* Set the number of ports on the Warp Core to 20G */
			FUNC4(sc, MISC_REG_XMAC_PHY_PORT_MODE, 1);
		}
	}
	/* Soft reset */
	FUNC4(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_CLEAR,
	       MISC_REGISTERS_RESET_REG_2_XMAC_SOFT);
	FUNC1(1000 * 1);

	FUNC4(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_SET,
	       MISC_REGISTERS_RESET_REG_2_XMAC_SOFT);

}