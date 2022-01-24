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
struct machfb_softc {int sc_width; int sc_depth; int sc_height; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLR_CMP_CLR ; 
 int /*<<< orphan*/  CLR_CMP_CNTL ; 
 int /*<<< orphan*/  CLR_CMP_MASK ; 
 int /*<<< orphan*/  CONTEXT_MASK ; 
 int /*<<< orphan*/  CRTC_INT_CNTL ; 
 int DAC_8BIT_EN ; 
 int /*<<< orphan*/  DAC_CNTL ; 
 int /*<<< orphan*/  DP_BKGD_CLR ; 
 int DP_CHAIN_32BPP ; 
 int DP_CHAIN_8BPP ; 
 int /*<<< orphan*/  DP_CHAIN_MASK ; 
 int /*<<< orphan*/  DP_FRGD_CLR ; 
 int /*<<< orphan*/  DP_MIX ; 
 int /*<<< orphan*/  DP_PIX_WIDTH ; 
 int /*<<< orphan*/  DP_SRC ; 
 int /*<<< orphan*/  DP_WRITE_MASK ; 
 int DST_32BPP ; 
 int DST_8BPP ; 
 int /*<<< orphan*/  DST_BRES_DEC ; 
 int /*<<< orphan*/  DST_BRES_ERR ; 
 int /*<<< orphan*/  DST_BRES_INC ; 
 int /*<<< orphan*/  DST_CNTL ; 
 int /*<<< orphan*/  DST_HEIGHT ; 
 int DST_LAST_PEL ; 
 int /*<<< orphan*/  DST_OFF_PITCH ; 
 int DST_X_LEFT_TO_RIGHT ; 
 int DST_Y_TOP_TO_BOTTOM ; 
 int /*<<< orphan*/  DST_Y_X ; 
 int FRGD_SRC_FRGD_CLR ; 
 int /*<<< orphan*/  GUI_TRAJ_CNTL ; 
 int HOST_32BPP ; 
 int HOST_8BPP ; 
 int /*<<< orphan*/  HOST_CNTL ; 
 int MIX_DST ; 
 int MIX_SRC ; 
 int /*<<< orphan*/  PAT_CNTL ; 
 int /*<<< orphan*/  PAT_REG0 ; 
 int /*<<< orphan*/  PAT_REG1 ; 
 int /*<<< orphan*/  SC_BOTTOM ; 
 int /*<<< orphan*/  SC_LEFT ; 
 int /*<<< orphan*/  SC_RIGHT ; 
 int /*<<< orphan*/  SC_TOP ; 
 int SRC_32BPP ; 
 int SRC_8BPP ; 
 int /*<<< orphan*/  SRC_CNTL ; 
 int /*<<< orphan*/  SRC_HEIGHT1_WIDTH1 ; 
 int /*<<< orphan*/  SRC_HEIGHT2_WIDTH2 ; 
 int SRC_LINE_X_LEFT_TO_RIGHT ; 
 int /*<<< orphan*/  SRC_OFF_PITCH ; 
 int /*<<< orphan*/  SRC_Y_X ; 
 int /*<<< orphan*/  SRC_Y_X_START ; 
 int /*<<< orphan*/  FUNC0 (struct machfb_softc*) ; 
 int FUNC1 (struct machfb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct machfb_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct machfb_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct machfb_softc*) ; 

__attribute__((used)) static void
FUNC5(struct machfb_softc *sc)
{
	uint32_t pitch_value;

	pitch_value = sc->sc_width;

	if (sc->sc_depth == 24)
		pitch_value *= 3;

	FUNC0(sc);

	FUNC3(sc, 14);

	FUNC2(sc, CONTEXT_MASK, 0xffffffff);

	FUNC2(sc, DST_OFF_PITCH, (pitch_value / 8) << 22);

	FUNC2(sc, DST_Y_X, 0);
	FUNC2(sc, DST_HEIGHT, 0);
	FUNC2(sc, DST_BRES_ERR, 0);
	FUNC2(sc, DST_BRES_INC, 0);
	FUNC2(sc, DST_BRES_DEC, 0);

	FUNC2(sc, DST_CNTL, DST_LAST_PEL | DST_X_LEFT_TO_RIGHT |
	    DST_Y_TOP_TO_BOTTOM);

	FUNC2(sc, SRC_OFF_PITCH, (pitch_value / 8) << 22);

	FUNC2(sc, SRC_Y_X, 0);
	FUNC2(sc, SRC_HEIGHT1_WIDTH1, 1);
	FUNC2(sc, SRC_Y_X_START, 0);
	FUNC2(sc, SRC_HEIGHT2_WIDTH2, 1);

	FUNC2(sc, SRC_CNTL, SRC_LINE_X_LEFT_TO_RIGHT);

	FUNC3(sc, 13);
	FUNC2(sc, HOST_CNTL, 0);

	FUNC2(sc, PAT_REG0, 0);
	FUNC2(sc, PAT_REG1, 0);
	FUNC2(sc, PAT_CNTL, 0);

	FUNC2(sc, SC_LEFT, 0);
	FUNC2(sc, SC_TOP, 0);
	FUNC2(sc, SC_BOTTOM, sc->sc_height - 1);
	FUNC2(sc, SC_RIGHT, pitch_value - 1);

	FUNC2(sc, DP_BKGD_CLR, 0);
	FUNC2(sc, DP_FRGD_CLR, 0xffffffff);
	FUNC2(sc, DP_WRITE_MASK, 0xffffffff);
	FUNC2(sc, DP_MIX, (MIX_SRC << 16) | MIX_DST);

	FUNC2(sc, DP_SRC, FRGD_SRC_FRGD_CLR);

	FUNC3(sc, 3);
	FUNC2(sc, CLR_CMP_CLR, 0);
	FUNC2(sc, CLR_CMP_MASK, 0xffffffff);
	FUNC2(sc, CLR_CMP_CNTL, 0);

	FUNC3(sc, 2);
	switch (sc->sc_depth) {
	case 8:
		FUNC2(sc, DP_PIX_WIDTH, HOST_8BPP | SRC_8BPP | DST_8BPP);
		FUNC2(sc, DP_CHAIN_MASK, DP_CHAIN_8BPP);
		FUNC2(sc, DAC_CNTL, FUNC1(sc, DAC_CNTL) | DAC_8BIT_EN);
		break;
#if 0
	case 32:
		regw(sc, DP_PIX_WIDTH, HOST_32BPP | SRC_32BPP | DST_32BPP);
		regw(sc, DP_CHAIN_MASK, DP_CHAIN_32BPP);
		regw(sc, DAC_CNTL, regr(sc, DAC_CNTL) | DAC_8BIT_EN);
		break;
#endif
	}

	FUNC3(sc, 2);
	FUNC2(sc, CRTC_INT_CNTL, FUNC1(sc, CRTC_INT_CNTL) & ~0x20);
	FUNC2(sc, GUI_TRAJ_CNTL, DST_X_LEFT_TO_RIGHT | DST_Y_TOP_TO_BOTTOM);

	FUNC4(sc);
}