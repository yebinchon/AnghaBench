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
struct rtwn_softc {int nrxchains; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int R12A_MAX_NRXCHAINS ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int R12A_TXAGC_TABLE_SELECT ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r12a_iq_afe_regs ; 
 int /*<<< orphan*/  r12a_iq_bb_regs ; 
 int /*<<< orphan*/  r12a_iq_rf_regs ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_softc*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtwn_softc*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtwn_softc*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtwn_softc*,int*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct rtwn_softc*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rtwn_softc*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct rtwn_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct rtwn_softc*) ; 

void
FUNC14(struct rtwn_softc *sc)
{
#define R12A_MAX_NRXCHAINS	2
	uint32_t bb_vals[FUNC4(r12a_iq_bb_regs)];
	uint32_t afe_vals[FUNC4(r12a_iq_afe_regs)];
	uint32_t rf_vals[FUNC4(r12a_iq_rf_regs) * R12A_MAX_NRXCHAINS];
	uint32_t rfe[2];

	FUNC0(sc->nrxchains <= R12A_MAX_NRXCHAINS,
	    ("nrxchains > %d (%d)\n", R12A_MAX_NRXCHAINS, sc->nrxchains));

	/* Save registers. */
	FUNC7(sc, bb_vals, r12a_iq_bb_regs,
	    FUNC4(r12a_iq_bb_regs));

	/* Select page C1. */
	FUNC10(sc, R12A_TXAGC_TABLE_SELECT, 0, 0x80000000);
	rfe[0] = FUNC9(sc, FUNC2(0));
	rfe[1] = FUNC9(sc, FUNC2(1));

	FUNC7(sc, afe_vals, r12a_iq_afe_regs,
	    FUNC4(r12a_iq_afe_regs));
	FUNC8(sc, rf_vals, r12a_iq_rf_regs,
	    FUNC4(r12a_iq_rf_regs));

#ifdef RTWN_TODO
	/* Configure MAC. */
	rtwn_iq_config_mac(sc);
	rtwn_iq_tx(sc);
#endif

	FUNC6(sc, rf_vals, r12a_iq_rf_regs,
	    FUNC4(r12a_iq_rf_regs));
	FUNC5(sc, afe_vals, r12a_iq_afe_regs,
	    FUNC4(r12a_iq_afe_regs));

	/* Select page C1. */
	FUNC10(sc, R12A_TXAGC_TABLE_SELECT, 0, 0x80000000);

	/* Chain 0. */
	FUNC11(sc, FUNC3(0), 0);
	FUNC11(sc, FUNC1(0), 0);
	FUNC11(sc, 0xc88, 0);
	FUNC11(sc, 0xc8c, 0x3c000000);
	FUNC10(sc, 0xc90, 0, 0x00000080);
	FUNC10(sc, 0xcc4, 0, 0x20040000);
	FUNC10(sc, 0xcc8, 0, 0x20000000);

	/* Chain 1. */
	FUNC11(sc, FUNC3(1), 0);
	FUNC11(sc, FUNC1(1), 0);
	FUNC11(sc, 0xe88, 0);
	FUNC11(sc, 0xe8c, 0x3c000000);
	FUNC10(sc, 0xe90, 0, 0x00000080);
	FUNC10(sc, 0xec4, 0, 0x20040000);
	FUNC10(sc, 0xec8, 0, 0x20000000);

	FUNC11(sc, FUNC2(0), rfe[0]);
	FUNC11(sc, FUNC2(1), rfe[1]);

	FUNC5(sc, bb_vals, r12a_iq_bb_regs,
	    FUNC4(r12a_iq_bb_regs));
#undef R12A_MAX_NRXCHAINS
}