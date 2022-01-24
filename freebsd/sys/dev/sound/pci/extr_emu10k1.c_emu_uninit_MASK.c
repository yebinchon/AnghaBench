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
typedef  scalar_t__ u_int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  silent_map; int /*<<< orphan*/  silent_page; int /*<<< orphan*/  ptb_map; int /*<<< orphan*/  ptb_pages; int /*<<< orphan*/  blocks; } ;
struct sc_info {scalar_t__ mpu; TYPE_1__ mem; int /*<<< orphan*/  dev; scalar_t__ audigy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMU_ADCBA ; 
 int /*<<< orphan*/  EMU_ADCBS ; 
 int /*<<< orphan*/  EMU_A_DBG ; 
 int /*<<< orphan*/  EMU_A_DBG_SINGLE_STEP ; 
 int /*<<< orphan*/  EMU_CHAN_CPF ; 
 int /*<<< orphan*/  EMU_CHAN_CVCF ; 
 int /*<<< orphan*/  EMU_CHAN_DCYSUSV ; 
 int /*<<< orphan*/  EMU_CHAN_PTRX ; 
 int /*<<< orphan*/  EMU_CHAN_VTFT ; 
 int /*<<< orphan*/  EMU_CLIEH ; 
 int /*<<< orphan*/  EMU_CLIEL ; 
 int /*<<< orphan*/  EMU_FXBA ; 
 int /*<<< orphan*/  EMU_FXBS ; 
 int /*<<< orphan*/  EMU_FXWC ; 
 int /*<<< orphan*/  EMU_HCFG ; 
 int EMU_HCFG_LOCKSOUNDCACHE ; 
 int EMU_HCFG_LOCKTANKCACHE_MASK ; 
 int EMU_HCFG_MUTEBUTTONENABLE ; 
 int /*<<< orphan*/  EMU_INTE ; 
 int /*<<< orphan*/  EMU_MICBA ; 
 int /*<<< orphan*/  EMU_MICBS ; 
 int /*<<< orphan*/  EMU_PTB ; 
 int /*<<< orphan*/  EMU_RECBS_BUFSIZE_NONE ; 
 int /*<<< orphan*/  EMU_SOLEH ; 
 int /*<<< orphan*/  EMU_SOLEL ; 
 int /*<<< orphan*/  EMU_TCB ; 
 int /*<<< orphan*/  EMU_TCBS ; 
 int /*<<< orphan*/  ENV_OFF ; 
 scalar_t__ NUM_G ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_info*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct sc_info *sc)
{
	u_int32_t ch;

	FUNC3(sc, EMU_INTE, 0, 4);
	for (ch = 0; ch < NUM_G; ch++)
		FUNC4(sc, ch, EMU_CHAN_DCYSUSV, ENV_OFF);
	for (ch = 0; ch < NUM_G; ch++) {
		FUNC4(sc, ch, EMU_CHAN_VTFT, 0);
		FUNC4(sc, ch, EMU_CHAN_CVCF, 0);
		FUNC4(sc, ch, EMU_CHAN_PTRX, 0);
		FUNC4(sc, ch, EMU_CHAN_CPF, 0);
	}

	if (sc->audigy) {	/* stop fx processor */
		FUNC4(sc, 0, EMU_A_DBG, EMU_A_DBG_SINGLE_STEP);
	}

	/* disable audio and lock cache */
	FUNC3(sc, EMU_HCFG,
	    EMU_HCFG_LOCKSOUNDCACHE | EMU_HCFG_LOCKTANKCACHE_MASK | EMU_HCFG_MUTEBUTTONENABLE,
	    4);

	FUNC4(sc, 0, EMU_PTB, 0);
	/* reset recording buffers */
	FUNC4(sc, 0, EMU_MICBS, EMU_RECBS_BUFSIZE_NONE);
	FUNC4(sc, 0, EMU_MICBA, 0);
	FUNC4(sc, 0, EMU_FXBS, EMU_RECBS_BUFSIZE_NONE);
	FUNC4(sc, 0, EMU_FXBA, 0);
	FUNC4(sc, 0, EMU_FXWC, 0);
	FUNC4(sc, 0, EMU_ADCBS, EMU_RECBS_BUFSIZE_NONE);
	FUNC4(sc, 0, EMU_ADCBA, 0);
	FUNC4(sc, 0, EMU_TCB, 0);
	FUNC4(sc, 0, EMU_TCBS, 0);

	/* disable channel interrupt */
	FUNC4(sc, 0, EMU_CLIEL, 0);
	FUNC4(sc, 0, EMU_CLIEH, 0);
	FUNC4(sc, 0, EMU_SOLEL, 0);
	FUNC4(sc, 0, EMU_SOLEH, 0);

	/* init envelope engine */
	if (!FUNC0(&sc->mem.blocks))
		FUNC1(sc->dev, "warning: memblock list not empty\n");
	FUNC2(sc, sc->mem.ptb_pages, sc->mem.ptb_map);
	FUNC2(sc, sc->mem.silent_page, sc->mem.silent_map);

	if(sc->mpu)
	    FUNC5(sc->mpu);
	return 0;
}