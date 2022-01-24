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
typedef  int uint16_t ;
struct elink_vars {int dummy; } ;
struct elink_params {int port; int* mac_addr; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*,int) ; 
 int EMAC_MODE_RESET ; 
 int EMAC_REG_EMAC_MAC_MATCH ; 
 int EMAC_REG_EMAC_MODE ; 
 int GRCBASE_EMAC0 ; 
 int GRCBASE_EMAC1 ; 
 scalar_t__ GRCBASE_MISC ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_2_CLEAR ; 
 int MISC_REGISTERS_RESET_REG_2_RST_EMAC0_HARD_CORE ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_2_SET ; 
 int FUNC3 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,struct elink_params*) ; 

__attribute__((used)) static void FUNC7(struct elink_params *params,
			    struct elink_vars *vars)
{
	/* reset and unreset the emac core */
	struct bxe_softc *sc = params->sc;
	uint8_t port = params->port;
	uint32_t emac_base = port ? GRCBASE_EMAC1 : GRCBASE_EMAC0;
	uint32_t val;
	uint16_t timeout;

	FUNC4(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_CLEAR,
	       (MISC_REGISTERS_RESET_REG_2_RST_EMAC0_HARD_CORE << port));
	FUNC0(5);
	FUNC4(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_SET,
	       (MISC_REGISTERS_RESET_REG_2_RST_EMAC0_HARD_CORE << port));

	/* init emac - use read-modify-write */
	/* self clear reset */
	val = FUNC3(sc, emac_base + EMAC_REG_EMAC_MODE);
	FUNC5(sc, emac_base + EMAC_REG_EMAC_MODE, (val | EMAC_MODE_RESET));

	timeout = 200;
	do {
		val = FUNC3(sc, emac_base + EMAC_REG_EMAC_MODE);
		FUNC2(sc, "EMAC reset reg is %u\n", val);
		if (!timeout) {
			FUNC1(sc, "EMAC timeout!\n");
			return;
		}
		timeout--;
	} while (val & EMAC_MODE_RESET);

	FUNC6(sc, params);
	/* Set mac address */
	val = ((params->mac_addr[0] << 8) |
		params->mac_addr[1]);
	FUNC5(sc, emac_base + EMAC_REG_EMAC_MAC_MATCH, val);

	val = ((params->mac_addr[2] << 24) |
	       (params->mac_addr[3] << 16) |
	       (params->mac_addr[4] << 8) |
		params->mac_addr[5]);
	FUNC5(sc, emac_base + EMAC_REG_EMAC_MAC_MATCH + 4, val);
}