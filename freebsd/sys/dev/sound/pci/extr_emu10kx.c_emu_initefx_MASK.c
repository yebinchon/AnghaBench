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
struct emu_sc_info {unsigned int code_size; scalar_t__ dbg_level; scalar_t__ is_emu10k1; scalar_t__ routing_code_end; void* dummy_gpr; int /*<<< orphan*/  rm; scalar_t__ mch_rec; void** cache_gpr; scalar_t__ has_51; scalar_t__ has_71; int /*<<< orphan*/  mch_disabled; void** mute_gpr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACC3 ; 
 int /*<<< orphan*/  ANALOGMUTE ; 
 unsigned int A_IN_AC97_L ; 
 unsigned int A_IN_AC97_R ; 
 unsigned int A_IN_AUX2_L ; 
 unsigned int A_IN_AUX2_R ; 
 unsigned int A_IN_LINE2_L ; 
 unsigned int A_IN_LINE2_R ; 
 unsigned int A_IN_O_SPDIF_L ; 
 unsigned int A_IN_O_SPDIF_R ; 
 unsigned int A_IN_R_SPDIF_L ; 
 unsigned int A_IN_R_SPDIF_R ; 
 unsigned int A_IN_SPDIF_CD_L ; 
 unsigned int A_IN_SPDIF_CD_R ; 
 int /*<<< orphan*/  A_OUT_ADC_REC_L ; 
 int /*<<< orphan*/  A_OUT_ADC_REC_R ; 
 int /*<<< orphan*/  A_OUT_A_CENTER ; 
 int /*<<< orphan*/  A_OUT_A_FRONT_L ; 
 int /*<<< orphan*/  A_OUT_A_FRONT_R ; 
 int /*<<< orphan*/  A_OUT_A_REAR_L ; 
 int /*<<< orphan*/  A_OUT_A_REAR_R ; 
 int /*<<< orphan*/  A_OUT_A_SIDE_L ; 
 int /*<<< orphan*/  A_OUT_A_SIDE_R ; 
 int /*<<< orphan*/  A_OUT_A_SUB ; 
 int /*<<< orphan*/  A_OUT_D_CENTER ; 
 int /*<<< orphan*/  A_OUT_D_FRONT_L ; 
 int /*<<< orphan*/  A_OUT_D_FRONT_R ; 
 int /*<<< orphan*/  A_OUT_D_REAR_L ; 
 int /*<<< orphan*/  A_OUT_D_REAR_R ; 
 int /*<<< orphan*/  A_OUT_D_SIDE_L ; 
 int /*<<< orphan*/  A_OUT_D_SIDE_R ; 
 int /*<<< orphan*/  A_OUT_D_SUB ; 
 int /*<<< orphan*/  A_OUT_HPHONE_L ; 
 int /*<<< orphan*/  A_OUT_HPHONE_R ; 
 int /*<<< orphan*/  CDSPDIFMUTE ; 
 size_t C_CENTER ; 
 size_t C_FRONT_L ; 
 size_t C_FRONT_R ; 
 size_t C_REAR_L ; 
 size_t C_REAR_R ; 
 size_t C_REC_L ; 
 size_t C_REC_R ; 
 size_t C_SIDE_L ; 
 size_t C_SIDE_R ; 
 size_t C_SUB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EMU_A_DBG ; 
 int /*<<< orphan*/  EMU_A_DBG_SINGLE_STEP ; 
 int /*<<< orphan*/  EMU_DBG ; 
 int /*<<< orphan*/  EMU_DBG_SINGLE_STEP ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 unsigned int IN_AC97_L ; 
 unsigned int IN_AC97_R ; 
 unsigned int IN_COAX_SPDIF_L ; 
 unsigned int IN_COAX_SPDIF_R ; 
 unsigned int IN_LINE1_L ; 
 unsigned int IN_LINE1_R ; 
 unsigned int IN_LINE2_L ; 
 unsigned int IN_LINE2_R ; 
 unsigned int IN_SPDIF_CD_L ; 
 unsigned int IN_SPDIF_CD_R ; 
 unsigned int IN_TOSLINK_L ; 
 unsigned int IN_TOSLINK_R ; 
 unsigned int IN_ZOOM_L ; 
 unsigned int IN_ZOOM_R ; 
 int /*<<< orphan*/  MACS ; 
 int /*<<< orphan*/  M_FX0_FRONT_L ; 
 int /*<<< orphan*/  M_FX0_REC_L ; 
 int /*<<< orphan*/  M_FX1_FRONT_R ; 
 int /*<<< orphan*/  M_FX1_REC_R ; 
 int /*<<< orphan*/  M_FX2_REAR_L ; 
 int /*<<< orphan*/  M_FX3_REAR_R ; 
 int /*<<< orphan*/  M_FX4_CENTER ; 
 int /*<<< orphan*/  M_FX5_SUBWOOFER ; 
 int /*<<< orphan*/  M_FX6_SIDE_L ; 
 int /*<<< orphan*/  M_FX7_SIDE_R ; 
 int /*<<< orphan*/  M_IN0_FRONT_L ; 
 int /*<<< orphan*/  M_IN0_FRONT_R ; 
 int /*<<< orphan*/  M_IN0_REC_L ; 
 int /*<<< orphan*/  M_IN0_REC_R ; 
 int /*<<< orphan*/  M_IN1_FRONT_L ; 
 int /*<<< orphan*/  M_IN1_FRONT_R ; 
 int /*<<< orphan*/  M_IN1_REC_L ; 
 int /*<<< orphan*/  M_IN1_REC_R ; 
 int /*<<< orphan*/  M_IN2_FRONT_L ; 
 int /*<<< orphan*/  M_IN2_FRONT_R ; 
 int /*<<< orphan*/  M_IN2_REC_L ; 
 int /*<<< orphan*/  M_IN2_REC_R ; 
 int /*<<< orphan*/  M_IN3_FRONT_L ; 
 int /*<<< orphan*/  M_IN3_FRONT_R ; 
 int /*<<< orphan*/  M_IN3_REC_L ; 
 int /*<<< orphan*/  M_IN3_REC_R ; 
 int /*<<< orphan*/  M_IN4_FRONT_L ; 
 int /*<<< orphan*/  M_IN4_FRONT_R ; 
 int /*<<< orphan*/  M_IN4_REC_L ; 
 int /*<<< orphan*/  M_IN4_REC_R ; 
 int /*<<< orphan*/  M_IN5_FRONT_L ; 
 int /*<<< orphan*/  M_IN5_FRONT_R ; 
 int /*<<< orphan*/  M_IN5_REC_L ; 
 int /*<<< orphan*/  M_IN5_REC_R ; 
 int /*<<< orphan*/  M_IN6_FRONT_L ; 
 int /*<<< orphan*/  M_IN6_FRONT_R ; 
 int /*<<< orphan*/  M_IN6_REC_L ; 
 int /*<<< orphan*/  M_IN6_REC_R ; 
 int /*<<< orphan*/  M_IN7_FRONT_L ; 
 int /*<<< orphan*/  M_IN7_FRONT_R ; 
 int /*<<< orphan*/  M_IN7_REC_L ; 
 int /*<<< orphan*/  M_IN7_REC_R ; 
 int /*<<< orphan*/  M_MASTER_CENTER ; 
 int /*<<< orphan*/  M_MASTER_FRONT_L ; 
 int /*<<< orphan*/  M_MASTER_FRONT_R ; 
 int /*<<< orphan*/  M_MASTER_REAR_L ; 
 int /*<<< orphan*/  M_MASTER_REAR_R ; 
 int /*<<< orphan*/  M_MASTER_REC_L ; 
 int /*<<< orphan*/  M_MASTER_REC_R ; 
 int /*<<< orphan*/  M_MASTER_SIDE_L ; 
 int /*<<< orphan*/  M_MASTER_SIDE_R ; 
 int /*<<< orphan*/  M_MASTER_SUBWOOFER ; 
 unsigned int NUM_MUTE ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  OUT_AC97_L ; 
 int /*<<< orphan*/  OUT_AC97_R ; 
 int /*<<< orphan*/  OUT_ADC_REC_L ; 
 int /*<<< orphan*/  OUT_ADC_REC_R ; 
 int /*<<< orphan*/  OUT_A_CENTER ; 
 int /*<<< orphan*/  OUT_A_SUB ; 
 int /*<<< orphan*/  OUT_D_CENTER ; 
 int /*<<< orphan*/  OUT_D_SUB ; 
 int /*<<< orphan*/  OUT_HEADPHONE_L ; 
 int /*<<< orphan*/  OUT_HEADPHONE_R ; 
 int /*<<< orphan*/  OUT_REAR_L ; 
 int /*<<< orphan*/  OUT_REAR_R ; 
 int /*<<< orphan*/  OUT_TOSLINK_L ; 
 int /*<<< orphan*/  OUT_TOSLINK_R ; 
 int /*<<< orphan*/  SKIP ; 
 int /*<<< orphan*/  FUNC12 (struct emu_sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (struct emu_sc_info*) ; 
 void* FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct emu_sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct emu_sc_info*,void*,int) ; 

__attribute__((used)) static void
FUNC17(struct emu_sc_info *sc)
{
	unsigned int i;
	uint32_t pc;

	/* stop DSP */
	if (sc->is_emu10k1) {
		FUNC15(sc, 0, EMU_DBG, EMU_DBG_SINGLE_STEP);
	} else {
		FUNC15(sc, 0, EMU_A_DBG, EMU_A_DBG_SINGLE_STEP);
	}

	/* code size is in instructions */
	pc = 0;
	for (i = 0; i < sc->code_size; i++) {
		if (sc->is_emu10k1) {
			FUNC12(sc, ACC3, FUNC0(0x0), FUNC0(0x0), FUNC0(0x0), FUNC0(0x0), &pc);
		} else {
			FUNC12(sc, SKIP, FUNC0(0x0), FUNC0(0x0), FUNC0(0xf), FUNC0(0x0), &pc);
		}
	}

	/* allocate GPRs for mute switches (EFX_SKIP). Mute by default */
	for (i = 0; i < NUM_MUTE; i++) {
		sc->mute_gpr[i] = FUNC14(sc->rm, 1);
		FUNC16(sc, sc->mute_gpr[i], 1);
	}
	FUNC13(sc);

	pc = 0;

	/*
	 * DSP code below is not good, because:
	 * 1. It can be written smaller, if it can use DSP accumulator register
	 * instead of cache_gpr[].
	 * 2. It can be more careful when volume is 100%, because in DSP
	 * x*0x7fffffff may not be equal to x !
	 */

	/* clean outputs */
	for (i = 0; i < 16 ; i++) {
		FUNC12(sc, ACC3, FUNC11(i), FUNC0(0), FUNC0(0), FUNC0(0), &pc);
	}


	if (sc->is_emu10k1) {
		FUNC1(C_FRONT_L);
		FUNC1(C_FRONT_R);
		FUNC1(C_REC_L);
		FUNC1(C_REC_R);

		/* fx0 to front/record, 100%/muted by default */
		FUNC5("pcm_front_l", FUNC7(0), M_FX0_FRONT_L, C_FRONT_L, 100);
		FUNC5("pcm_front_r", FUNC7(1), M_FX1_FRONT_R, C_FRONT_R, 100);
		FUNC5(NULL, FUNC7(0), M_FX0_REC_L, C_REC_L, 0);
		FUNC5(NULL, FUNC7(1), M_FX1_REC_R, C_REC_R, 0);

		/* in0, from AC97 codec output */
		FUNC5("ac97_front_l", FUNC10(IN_AC97_L), M_IN0_FRONT_L, C_FRONT_L, 0);
		FUNC5("ac97_front_r", FUNC10(IN_AC97_R), M_IN0_FRONT_R, C_FRONT_R, 0);
		FUNC5("ac97_rec_l", FUNC10(IN_AC97_L), M_IN0_REC_L, C_REC_L, 0);
		FUNC5("ac97_rec_r", FUNC10(IN_AC97_R), M_IN0_REC_R, C_REC_R, 0);

		/* in1, from CD S/PDIF */
		/* XXX EFX_SKIP 4 assumes that each EFX_ROUTE is one DSP op */
		FUNC6(4, CDSPDIFMUTE);
		FUNC5(NULL, FUNC10(IN_SPDIF_CD_L), M_IN1_FRONT_L, C_FRONT_L, 0);
		FUNC5(NULL, FUNC10(IN_SPDIF_CD_R), M_IN1_FRONT_R, C_FRONT_R, 0);
		FUNC5(NULL, FUNC10(IN_SPDIF_CD_L), M_IN1_REC_L, C_REC_L, 0);
		FUNC5(NULL, FUNC10(IN_SPDIF_CD_R), M_IN1_REC_R, C_REC_R, 0);
		
		if (sc->dbg_level > 0) {
			/* in2, ZoomVide (???) */
			FUNC5("zoom_front_l", FUNC10(IN_ZOOM_L), M_IN2_FRONT_L, C_FRONT_L, 0);
			FUNC5("zoom_front_r", FUNC10(IN_ZOOM_R), M_IN2_FRONT_R, C_FRONT_R, 0);
			FUNC5("zoom_rec_l", FUNC10(IN_ZOOM_L), M_IN2_REC_L, C_REC_L, 0);
			FUNC5("zoom_rec_r", FUNC10(IN_ZOOM_R), M_IN2_REC_R, C_REC_R, 0);
		}

		/* in3, TOSLink  */
		FUNC5(NULL, FUNC10(IN_TOSLINK_L), M_IN3_FRONT_L, C_FRONT_L, 0);
		FUNC5(NULL, FUNC10(IN_TOSLINK_R), M_IN3_FRONT_R, C_FRONT_R, 0);
		FUNC5(NULL, FUNC10(IN_TOSLINK_L), M_IN3_REC_L, C_REC_L, 0);
		FUNC5(NULL, FUNC10(IN_TOSLINK_R), M_IN3_REC_R, C_REC_R, 0);
		/* in4, LineIn  */
		FUNC5(NULL, FUNC10(IN_LINE1_L), M_IN4_FRONT_L, C_FRONT_L, 0);
		FUNC5(NULL, FUNC10(IN_LINE1_R), M_IN4_FRONT_R, C_FRONT_R, 0);
		FUNC5(NULL, FUNC10(IN_LINE1_L), M_IN4_REC_L, C_REC_L, 0);
		FUNC5(NULL, FUNC10(IN_LINE1_R), M_IN4_REC_R, C_REC_R, 0);

		/* in5, on-card S/PDIF */
		FUNC5(NULL, FUNC10(IN_COAX_SPDIF_L), M_IN5_FRONT_L, C_FRONT_L, 0);
		FUNC5(NULL, FUNC10(IN_COAX_SPDIF_R), M_IN5_FRONT_R, C_FRONT_R, 0);
		FUNC5(NULL, FUNC10(IN_COAX_SPDIF_L), M_IN5_REC_L, C_REC_L, 0);
		FUNC5(NULL, FUNC10(IN_COAX_SPDIF_R), M_IN5_REC_R, C_REC_R, 0);

		/* in6, Line2 on Live!Drive */
		FUNC5(NULL, FUNC10(IN_LINE2_L), M_IN6_FRONT_L, C_FRONT_L, 0);
		FUNC5(NULL, FUNC10(IN_LINE2_R), M_IN6_FRONT_R, C_FRONT_R, 0);
		FUNC5(NULL, FUNC10(IN_LINE2_L), M_IN6_REC_L, C_REC_L, 0);
		FUNC5(NULL, FUNC10(IN_LINE2_R), M_IN6_REC_R, C_REC_R, 0);

		if (sc->dbg_level > 0) {
			/* in7, unknown */
			FUNC5("in7_front_l", FUNC10(0xE), M_IN7_FRONT_L, C_FRONT_L, 0);
			FUNC5("in7_front_r", FUNC10(0xF), M_IN7_FRONT_R, C_FRONT_R, 0);
			FUNC5("in7_rec_l", FUNC10(0xE), M_IN7_REC_L, C_REC_L, 0);
			FUNC5("in7_rec_r", FUNC10(0xF), M_IN7_REC_R, C_REC_R, 0);
		}

		/* analog and digital */
		FUNC3("master_front_l", C_FRONT_L, M_MASTER_FRONT_L, OUT_AC97_L, 100);
		FUNC3("master_front_r", C_FRONT_R, M_MASTER_FRONT_R, OUT_AC97_R, 100);
		/* S/PDIF */
		FUNC4(C_FRONT_L, M_MASTER_FRONT_L, OUT_TOSLINK_L);
		FUNC4(C_FRONT_R, M_MASTER_FRONT_R, OUT_TOSLINK_R);
		/* Headphones */
		FUNC4(C_FRONT_L, M_MASTER_FRONT_L, OUT_HEADPHONE_L);
		FUNC4(C_FRONT_R, M_MASTER_FRONT_R, OUT_HEADPHONE_R);

		/* rec output to "ADC" */
		FUNC3("master_rec_l", C_REC_L, M_MASTER_REC_L, OUT_ADC_REC_L, 100);
		FUNC3("master_rec_r", C_REC_R, M_MASTER_REC_R, OUT_ADC_REC_R, 100);

		if (!(sc->mch_disabled)) {
			/*
			 * Additional channel volume is controlled by mixer in
			 * emu_dspmixer_set() in -pcm.c
			 */

			/* fx2/3 (pcm1) to rear */
			FUNC1(C_REAR_L);
			FUNC1(C_REAR_R);
			FUNC5(NULL, FUNC7(2), M_FX2_REAR_L, C_REAR_L, 100);
			FUNC5(NULL, FUNC7(3), M_FX3_REAR_R, C_REAR_R, 100);

			FUNC3(NULL, C_REAR_L, M_MASTER_REAR_L, OUT_REAR_L, 100);
			FUNC3(NULL, C_REAR_R, M_MASTER_REAR_R, OUT_REAR_R, 100);
			if (sc->has_51) {
				/* fx4 (pcm2) to center */
				FUNC1(C_CENTER);
				FUNC5(NULL, FUNC7(4), M_FX4_CENTER, C_CENTER, 100);
				FUNC3(NULL, C_CENTER, M_MASTER_CENTER, OUT_D_CENTER, 100);

				/* XXX in digital mode (default) this should be muted because
				this output is shared with digital out */
				FUNC6(1, ANALOGMUTE);
				FUNC4(C_CENTER, M_MASTER_CENTER, OUT_A_CENTER);

				/* fx5 (pcm3) to sub */
				FUNC1(C_SUB);
				FUNC5(NULL, FUNC7(5), M_FX5_SUBWOOFER, C_SUB, 100);
				FUNC3(NULL, C_SUB, M_MASTER_SUBWOOFER, OUT_D_SUB, 100);

				/* XXX in digital mode (default) this should be muted because
				this output is shared with digital out */
				FUNC6(1, ANALOGMUTE);
				FUNC4(C_SUB, M_MASTER_SUBWOOFER, OUT_A_SUB);

			}
		} else {
			/* SND_EMU10KX_MULTICHANNEL_DISABLED */
			FUNC3(NULL, C_FRONT_L, M_MASTER_REAR_L, OUT_REAR_L, 57); /* 75%*75% */
			FUNC3(NULL, C_FRONT_R, M_MASTER_REAR_R, OUT_REAR_R, 57); /* 75%*75% */

#if 0
			/* XXX 5.1 does not work */

			if (sc->has_51) {
				/* (fx0+fx1)/2 to center */
				EFX_CACHE(C_CENTER);
				emu_addefxop(sc, MACS,
					GPR(sc->cache_gpr[C_CENTER]),
					GPR(sc->cache_gpr[C_CENTER]),
					DSP_CONST(0xd), /* = 1/2 */
					GPR(sc->cache_gpr[C_FRONT_L]),
					&pc);
				emu_addefxop(sc, MACS,
					GPR(sc->cache_gpr[C_CENTER]),
					GPR(sc->cache_gpr[C_CENTER]),
					DSP_CONST(0xd), /* = 1/2 */
					GPR(sc->cache_gpr[C_FRONT_R]),
					&pc);
				EFX_OUTPUT(NULL, C_CENTER, M_MASTER_CENTER, OUT_D_CENTER, 100);

				/* XXX in digital mode (default) this should be muted because
				this output is shared with digital out */
				EFX_SKIP(1, ANALOGMUTE);
				EFX_OUTPUTD(C_CENTER, M_MASTER_CENTER, OUT_A_CENTER);

				/* (fx0+fx1)/2  to sub */
				EFX_CACHE(C_SUB);
				emu_addefxop(sc, MACS,
					GPR(sc->cache_gpr[C_CENTER]),
					GPR(sc->cache_gpr[C_CENTER]),
					DSP_CONST(0xd), /* = 1/2 */
					GPR(sc->cache_gpr[C_FRONT_L]),
					&pc);
				emu_addefxop(sc, MACS,
					GPR(sc->cache_gpr[C_CENTER]),
					GPR(sc->cache_gpr[C_CENTER]),
					DSP_CONST(0xd), /* = 1/2 */
					GPR(sc->cache_gpr[C_FRONT_R]),
					&pc);
				/* XXX add lowpass filter here */

				EFX_OUTPUT(NULL, C_SUB, M_MASTER_SUBWOOFER, OUT_D_SUB, 100);

				/* XXX in digital mode (default) this should be muted because
				this output is shared with digital out */
				EFX_SKIP(1, ANALOGMUTE);
				EFX_OUTPUTD(C_SUB, M_MASTER_SUBWOOFER, OUT_A_SUB);
			}
#endif
		} /* !mch_disabled */
		if (sc->mch_rec) {
			/*
			 * MCH RECORDING , hight 16 slots. On 5.1 cards first 4 slots
			 * are used as outputs and already filled with data
			 */
			/*
			 * XXX On Live! cards stream does not begin at zero offset.
			 * It can be HW, driver or sound buffering problem.
			 * Use sync substream (offset 0x3E) to let userland find
			 * correct data.
			 */

			/*
			 * Substream map (in byte offsets, each substream is 2 bytes):
			 *	0x00..0x1E - outputs
			 *	0x20..0x3E - FX, inputs and sync stream
			 */

			/* First 2 channels (offset 0x20,0x22) are empty */
			for(i = (sc->has_51 ? 2 : 0); i < 2; i++)
				FUNC2(FUNC8(i), FUNC0(0));

			/* PCM Playback monitoring, offset 0x24..0x2A */
			for(i = 0; i < 4; i++)
				FUNC2(FUNC8(i+2), FUNC7(i));

			/* Copy of some inputs, offset 0x2C..0x3C */
			for(i = 0; i < 9; i++)
				FUNC2(FUNC8(i+8), FUNC10(i));

			/* sync data (0xc0de, offset 0x3E) */
			sc->dummy_gpr = FUNC14(sc->rm, 1);
			FUNC16(sc, sc->dummy_gpr, 0xc0de0000);

			FUNC2(FUNC8(15), FUNC9(sc->dummy_gpr));
		} /* mch_rec */
	} else /* emu10k2 and later */ {
		FUNC1(C_FRONT_L);
		FUNC1(C_FRONT_R);
		FUNC1(C_REC_L);
		FUNC1(C_REC_R);

		/* fx0 to front/record, 100%/muted by default */
		/*
		 * FRONT_[L|R] is controlled by AC97 emulation in
		 * emu_ac97_[read|write]_emulation in -pcm.c
		 */
		FUNC5(NULL, FUNC7(0), M_FX0_FRONT_L, C_FRONT_L, 100);
		FUNC5(NULL, FUNC7(1), M_FX1_FRONT_R, C_FRONT_R, 100);
		FUNC5(NULL, FUNC7(0), M_FX0_REC_L, C_REC_L, 0);
		FUNC5(NULL, FUNC7(1), M_FX1_REC_R, C_REC_R, 0);

		/* in0, from AC97 codec output */
		FUNC5(NULL, FUNC10(A_IN_AC97_L), M_IN0_FRONT_L, C_FRONT_L, 100);
		FUNC5(NULL, FUNC10(A_IN_AC97_R), M_IN0_FRONT_R, C_FRONT_R, 100);
		FUNC5(NULL, FUNC10(A_IN_AC97_L), M_IN0_REC_L, C_REC_L, 0);
		FUNC5(NULL, FUNC10(A_IN_AC97_R), M_IN0_REC_R, C_REC_R, 0);

		/* in1, from CD S/PDIF */
		FUNC5(NULL, FUNC10(A_IN_SPDIF_CD_L), M_IN1_FRONT_L, C_FRONT_L, 0);
		FUNC5(NULL, FUNC10(A_IN_SPDIF_CD_R), M_IN1_FRONT_R, C_FRONT_R, 0);
		FUNC5(NULL, FUNC10(A_IN_SPDIF_CD_L), M_IN1_REC_L, C_REC_L, 0);
		FUNC5(NULL, FUNC10(A_IN_SPDIF_CD_R), M_IN1_REC_R, C_REC_R, 0);

		/* in2, optical & coax S/PDIF on AudigyDrive*/
		/* XXX Should be muted when GPRSCS valid stream == 0 */
		FUNC5(NULL, FUNC10(A_IN_O_SPDIF_L), M_IN2_FRONT_L, C_FRONT_L, 0);
		FUNC5(NULL, FUNC10(A_IN_O_SPDIF_R), M_IN2_FRONT_R, C_FRONT_R, 0);
		FUNC5(NULL, FUNC10(A_IN_O_SPDIF_L), M_IN2_REC_L, C_REC_L, 0);
		FUNC5(NULL, FUNC10(A_IN_O_SPDIF_R), M_IN2_REC_R, C_REC_R, 0);

		if (sc->dbg_level > 0) {
			/* in3, unknown */
			FUNC5("in3_front_l", FUNC10(0x6), M_IN3_FRONT_L, C_FRONT_L, 0);
			FUNC5("in3_front_r", FUNC10(0x7), M_IN3_FRONT_R, C_FRONT_R, 0);
			FUNC5("in3_rec_l", FUNC10(0x6), M_IN3_REC_L, C_REC_L, 0);
			FUNC5("in3_rec_r", FUNC10(0x7), M_IN3_REC_R, C_REC_R, 0);
		}

		/* in4, LineIn 2 on AudigyDrive */
		FUNC5(NULL, FUNC10(A_IN_LINE2_L), M_IN4_FRONT_L, C_FRONT_L, 0);
		FUNC5(NULL, FUNC10(A_IN_LINE2_R), M_IN4_FRONT_R, C_FRONT_R, 0);
		FUNC5(NULL, FUNC10(A_IN_LINE2_L), M_IN4_REC_L, C_REC_L, 0);
		FUNC5(NULL, FUNC10(A_IN_LINE2_R), M_IN4_REC_R, C_REC_R, 0);

		/* in5, on-card S/PDIF */
		FUNC5(NULL, FUNC10(A_IN_R_SPDIF_L), M_IN5_FRONT_L, C_FRONT_L, 0);
		FUNC5(NULL, FUNC10(A_IN_R_SPDIF_R), M_IN5_FRONT_R, C_FRONT_R, 0);
		FUNC5(NULL, FUNC10(A_IN_R_SPDIF_L), M_IN5_REC_L, C_REC_L, 0);
		FUNC5(NULL, FUNC10(A_IN_R_SPDIF_R), M_IN5_REC_R, C_REC_R, 0);

		/* in6, AUX2 on AudigyDrive */
		FUNC5(NULL, FUNC10(A_IN_AUX2_L), M_IN6_FRONT_L, C_FRONT_L, 0);
		FUNC5(NULL, FUNC10(A_IN_AUX2_R), M_IN6_FRONT_R, C_FRONT_R, 0);
		FUNC5(NULL, FUNC10(A_IN_AUX2_L), M_IN6_REC_L, C_REC_L, 0);
		FUNC5(NULL, FUNC10(A_IN_AUX2_R), M_IN6_REC_R, C_REC_R, 0);

		if (sc->dbg_level > 0) {
			/* in7, unknown */
			FUNC5("in7_front_l", FUNC10(0xE), M_IN7_FRONT_L, C_FRONT_L, 0);
			FUNC5("in7_front_r", FUNC10(0xF), M_IN7_FRONT_R, C_FRONT_R, 0);
			FUNC5("in7_rec_l", FUNC10(0xE), M_IN7_REC_L, C_REC_L, 0);
			FUNC5("in7_rec_r", FUNC10(0xF), M_IN7_REC_R, C_REC_R, 0);
		}

		/* front output to headphones and  alog and digital *front */
		/* volume controlled by AC97 emulation */
		FUNC3(NULL, C_FRONT_L, M_MASTER_FRONT_L, A_OUT_A_FRONT_L, 100);
		FUNC3(NULL, C_FRONT_R, M_MASTER_FRONT_R, A_OUT_A_FRONT_R, 100);
		FUNC4(C_FRONT_L, M_MASTER_FRONT_L, A_OUT_D_FRONT_L);
		FUNC4(C_FRONT_R, M_MASTER_FRONT_R, A_OUT_D_FRONT_R);
		FUNC4(C_FRONT_L, M_MASTER_FRONT_L, A_OUT_HPHONE_L);
		FUNC4(C_FRONT_R, M_MASTER_FRONT_R, A_OUT_HPHONE_R);

		/* rec output to "ADC" */
		/* volume controlled by AC97 emulation */
		FUNC3(NULL, C_REC_L, M_MASTER_REC_L, A_OUT_ADC_REC_L, 100);
		FUNC3(NULL, C_REC_R, M_MASTER_REC_R, A_OUT_ADC_REC_R, 100);

		if (!(sc->mch_disabled)) {
			/*
			 * Additional channel volume is controlled by mixer in
			 * emu_dspmixer_set() in -pcm.c
			 */

			/* fx2/3 (pcm1) to rear */
			FUNC1(C_REAR_L);
			FUNC1(C_REAR_R);
			FUNC5(NULL, FUNC7(2), M_FX2_REAR_L, C_REAR_L, 100);
			FUNC5(NULL, FUNC7(3), M_FX3_REAR_R, C_REAR_R, 100);

			FUNC3(NULL, C_REAR_L, M_MASTER_REAR_L, A_OUT_A_REAR_L, 100);
			FUNC3(NULL, C_REAR_R, M_MASTER_REAR_R, A_OUT_A_REAR_R, 100);
			FUNC4(C_REAR_L, M_MASTER_REAR_L, A_OUT_D_REAR_L);
			FUNC4(C_REAR_R, M_MASTER_REAR_R, A_OUT_D_REAR_R);

			/* fx4 (pcm2) to center */
			FUNC1(C_CENTER);
			FUNC5(NULL, FUNC7(4), M_FX4_CENTER, C_CENTER, 100);
			FUNC3(NULL, C_CENTER, M_MASTER_CENTER, A_OUT_D_CENTER, 100);
#if 0
			/*
			 * XXX in digital mode (default) this should be muted
			 * because this output is shared with digital out
			 */
			EFX_OUTPUTD(C_CENTER, M_MASTER_CENTER, A_OUT_A_CENTER);
#endif
			/* fx5 (pcm3) to sub */
			FUNC1(C_SUB);
			FUNC5(NULL, FUNC7(5), M_FX5_SUBWOOFER, C_SUB, 100);
			FUNC3(NULL, C_SUB, M_MASTER_SUBWOOFER, A_OUT_D_SUB, 100);
#if 0
			/*
			 * XXX in digital mode (default) this should be muted
			 * because this output is shared with digital out
			 */
			EFX_OUTPUTD(C_SUB, M_MASTER_SUBWOOFER, A_OUT_A_SUB);
#endif
			if (sc->has_71) {
				/* XXX this will broke headphones on AudigyDrive */
				/* fx6/7 (pcm4) to side */
				FUNC1(C_SIDE_L);
				FUNC1(C_SIDE_R);
				FUNC5(NULL, FUNC7(6), M_FX6_SIDE_L, C_SIDE_L, 100);
				FUNC5(NULL, FUNC7(7), M_FX7_SIDE_R, C_SIDE_R, 100);
				FUNC3(NULL, C_SIDE_L, M_MASTER_SIDE_L, A_OUT_A_SIDE_L, 100);
				FUNC3(NULL, C_SIDE_R, M_MASTER_SIDE_R, A_OUT_A_SIDE_R, 100);
				FUNC4(C_SIDE_L, M_MASTER_SIDE_L, A_OUT_D_SIDE_L);
				FUNC4(C_SIDE_R, M_MASTER_SIDE_R, A_OUT_D_SIDE_R);
			}
		} else {	/* mch_disabled */
			FUNC4(C_FRONT_L, M_MASTER_FRONT_L, A_OUT_A_REAR_L);
			FUNC4(C_FRONT_R, M_MASTER_FRONT_R, A_OUT_A_REAR_R);

			FUNC4(C_FRONT_L, M_MASTER_FRONT_L, A_OUT_D_REAR_L);
			FUNC4(C_FRONT_R, M_MASTER_FRONT_R, A_OUT_D_REAR_R);

			if (sc->has_51) {
				/* (fx0+fx1)/2 to center */
				FUNC1(C_CENTER);
				FUNC12(sc, MACS,
					FUNC9(sc->cache_gpr[C_CENTER]),
					FUNC9(sc->cache_gpr[C_CENTER]),
					FUNC0(0xd), /* = 1/2 */
					FUNC9(sc->cache_gpr[C_FRONT_L]),
					&pc);
				FUNC12(sc, MACS,
					FUNC9(sc->cache_gpr[C_CENTER]),
					FUNC9(sc->cache_gpr[C_CENTER]),
					FUNC0(0xd), /* = 1/2 */
					FUNC9(sc->cache_gpr[C_FRONT_R]),
					&pc);
				FUNC3(NULL, C_CENTER, M_MASTER_CENTER, A_OUT_D_CENTER, 100);

				/* XXX in digital mode (default) this should be muted because
				this output is shared with digital out */
				FUNC6(1, ANALOGMUTE);
				FUNC4(C_CENTER, M_MASTER_CENTER, A_OUT_A_CENTER);

				/* (fx0+fx1)/2  to sub */
				FUNC1(C_SUB);
				FUNC12(sc, MACS,
					FUNC9(sc->cache_gpr[C_SUB]),
					FUNC9(sc->cache_gpr[C_SUB]),
					FUNC0(0xd), /* = 1/2 */
					FUNC9(sc->cache_gpr[C_FRONT_L]),
					&pc);
				FUNC12(sc, MACS,
					FUNC9(sc->cache_gpr[C_SUB]),
					FUNC9(sc->cache_gpr[C_SUB]),
					FUNC0(0xd), /* = 1/2 */
					FUNC9(sc->cache_gpr[C_FRONT_R]),
					&pc);
				/* XXX add lowpass filter here */

				FUNC3(NULL, C_SUB, M_MASTER_SUBWOOFER, A_OUT_D_SUB, 100);

				/* XXX in digital mode (default) this should be muted because
				this output is shared with digital out */
				FUNC6(1, ANALOGMUTE);
				FUNC4(C_SUB, M_MASTER_SUBWOOFER, A_OUT_A_SUB);
			}
		} /* mch_disabled */
		if (sc->mch_rec) {
			/* MCH RECORDING, high 32 slots */

			/*
			 * Stream map (in byte offsets):
			 *	0x00..0x3E - outputs
			 *	0x40..0x7E - FX, inputs
			 *	each substream is 2 bytes.
			 */
			/*
			 * XXX Audigy 2 Value cards (and, possibly,
			 * Audigy 4) write some unknown data in place of
			 * some outputs (offsets 0x20..0x3F) and one
			 * input (offset 0x7E).
			 */

			/* PCM Playback monitoring, offsets 0x40..0x5E */
			for(i = 0; i < 16; i++)
				FUNC2(FUNC8(i), FUNC7(i));

			/* Copy of all inputs, offsets 0x60..0x7E */
			for(i = 0; i < 16; i++)
				FUNC2(FUNC8(i+16), FUNC10(i));
#if 0
			/* XXX Audigy seems to work correct and does not need this */
			/* sync data (0xc0de), offset 0x7E */
			sc->dummy_gpr = emu_rm_gpr_alloc(sc->rm, 1);
			emumix_set_gpr(sc, sc->dummy_gpr, 0xc0de0000);
			EFX_COPY(FX2(31), GPR(sc->dummy_gpr));
#endif
		} /* mch_rec */
	}

	sc->routing_code_end = pc;

	/* start DSP */
	if (sc->is_emu10k1) {
		FUNC15(sc, 0, EMU_DBG, 0);
	} else {
		FUNC15(sc, 0, EMU_A_DBG, 0);
	}
}