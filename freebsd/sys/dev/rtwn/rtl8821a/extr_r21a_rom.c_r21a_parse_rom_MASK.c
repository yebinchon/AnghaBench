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
struct r12a_softc {int bt_coex; int bt_ant_num; void* ext_lna_5g; void* ext_lna_2g; int /*<<< orphan*/  ext_pa_5g; int /*<<< orphan*/  ext_pa_2g; } ;
struct r12a_rom {int rf_bt_opt; int /*<<< orphan*/  macaddr_21a; int /*<<< orphan*/  lna_type_5g; int /*<<< orphan*/  lna_type_2g; int /*<<< orphan*/  pa_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int R12A_RF_BT_OPT_ANT_NUM ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int R92C_MULTI_BT_FUNC_EN ; 
 int /*<<< orphan*/  R92C_MULTI_FUNC_CTRL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtwn_softc*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 

void
FUNC9(struct rtwn_softc *sc, uint8_t *buf)
{
	struct r12a_softc *rs = sc->sc_priv;
	struct r12a_rom *rom = (struct r12a_rom *)buf;
	uint8_t pa_type, lna_type_2g, lna_type_5g;

	/* Read PA/LNA types. */
	pa_type = FUNC4(rom->pa_type, 0);
	lna_type_2g = FUNC4(rom->lna_type_2g, 0);
	lna_type_5g = FUNC4(rom->lna_type_5g, 0);

	rs->ext_pa_2g = FUNC2(pa_type);
	rs->ext_pa_5g = FUNC3(pa_type);
	rs->ext_lna_2g = FUNC1(lna_type_2g);
	rs->ext_lna_5g = FUNC1(lna_type_5g);

	FUNC5(sc);
	rs->bt_coex =
	    !!(FUNC8(sc, R92C_MULTI_FUNC_CTRL) & R92C_MULTI_BT_FUNC_EN);
	FUNC6(sc);
	rs->bt_ant_num = (rom->rf_bt_opt & R12A_RF_BT_OPT_ANT_NUM);

	/* Read MAC address. */
	FUNC0(sc->sc_ic.ic_macaddr, rom->macaddr_21a);

	/* Execute common part of initialization. */
	FUNC7(sc, buf);
}