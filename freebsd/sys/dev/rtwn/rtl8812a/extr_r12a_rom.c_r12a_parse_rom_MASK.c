#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  ic_macaddr; } ;
struct rtwn_softc {TYPE_1__ sc_ic; struct r12a_softc* sc_priv; } ;
struct r12a_softc {int bt_coex; int bt_ant_num; int type_pa_2g; int type_pa_5g; int type_lna_2g; int type_lna_5g; int rfe_type; void* ext_lna_5g; scalar_t__ ext_pa_5g; void* ext_lna_2g; scalar_t__ ext_pa_2g; } ;
struct r12a_rom {int rf_bt_opt; int rfe_option; int /*<<< orphan*/  macaddr_12a; int /*<<< orphan*/  rf_board_opt; int /*<<< orphan*/  lna_type_5g; int /*<<< orphan*/  lna_type_2g; int /*<<< orphan*/  pa_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int R12A_RF_BT_OPT_ANT_NUM ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ R92C_BOARD_TYPE_HIGHPA ; 
 int /*<<< orphan*/  R92C_ROM_RF1_BOARD_TYPE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtwn_softc*,int /*<<< orphan*/ *) ; 

void
FUNC9(struct rtwn_softc *sc, uint8_t *buf)
{
	struct r12a_softc *rs = sc->sc_priv;
	struct r12a_rom *rom = (struct r12a_rom *)buf;
	uint8_t pa_type, lna_type_2g, lna_type_5g;

	/* Read PA/LNA types. */
	pa_type = FUNC7(rom->pa_type, 0);
	lna_type_2g = FUNC7(rom->lna_type_2g, 0);
	lna_type_5g = FUNC7(rom->lna_type_5g, 0);

	rs->ext_pa_2g = FUNC4(pa_type);
	rs->ext_pa_5g = FUNC5(pa_type);
	rs->ext_lna_2g = FUNC6(lna_type_2g);
	rs->ext_lna_5g = FUNC6(lna_type_5g);
	rs->bt_coex = (FUNC1(rom->rf_board_opt, R92C_ROM_RF1_BOARD_TYPE) ==
	    R92C_BOARD_TYPE_HIGHPA);
	rs->bt_ant_num = (rom->rf_bt_opt & R12A_RF_BT_OPT_ANT_NUM);

	if (rs->ext_pa_2g) {
		rs->type_pa_2g =
		    FUNC3(lna_type_2g, 0) |
		    (FUNC3(lna_type_2g, 1) << 2);
	}
	if (rs->ext_pa_5g) {
		rs->type_pa_5g =
		    FUNC3(lna_type_5g, 0) |
		    (FUNC3(lna_type_5g, 1) << 2);
	}
	if (rs->ext_lna_2g) {
		rs->type_lna_2g =
		    FUNC2(lna_type_2g, 0) |
		    (FUNC2(lna_type_2g, 1) << 2);
	}
	if (rs->ext_lna_5g) {
		rs->type_lna_5g =
		    FUNC2(lna_type_5g, 0) |
		    (FUNC2(lna_type_5g, 1) << 2);
	}

	if (rom->rfe_option & 0x80) {
		if (rs->ext_lna_5g) {
			if (rs->ext_pa_5g) {
				if (rs->ext_pa_2g && rs->ext_lna_2g)
					rs->rfe_type = 3;
				else
					rs->rfe_type = 0;
			} else
				rs->rfe_type = 2;
		} else
			rs->rfe_type = 4;
	} else {
		rs->rfe_type = rom->rfe_option & 0x3f;

		/* workaround for incorrect EFUSE map */
		if (rs->rfe_type == 4 &&
		    rs->ext_pa_2g && rs->ext_lna_2g &&
		    rs->ext_pa_5g && rs->ext_lna_5g)
			rs->rfe_type = 0;
	}

	/* Read MAC address. */
	FUNC0(sc->sc_ic.ic_macaddr, rom->macaddr_12a);

	/* Execute common part of initialization. */
	FUNC8(sc, buf);
}