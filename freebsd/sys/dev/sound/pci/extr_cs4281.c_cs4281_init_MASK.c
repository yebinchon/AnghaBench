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
typedef  int u_int32_t ;
struct sc_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_MIX_AUXOUT ; 
 int /*<<< orphan*/  AC97_MIX_MASTER ; 
 int /*<<< orphan*/  AC97_REG_POWER ; 
 int /*<<< orphan*/  CS4281PCI_ACCTL ; 
 int CS4281PCI_ACCTL_ESYN ; 
 int CS4281PCI_ACCTL_VFRM ; 
 int /*<<< orphan*/  CS4281PCI_ACISV ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CS4281PCI_ACOSV ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  CS4281PCI_ACSTS ; 
 int CS4281PCI_ACSTS_CRDY ; 
 int /*<<< orphan*/  CS4281PCI_CLKCR1 ; 
 int CS4281PCI_CLKCR1_DLLP ; 
 int CS4281PCI_CLKCR1_DLLRDY ; 
 int CS4281PCI_CLKCR1_SWCE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int CS4281PCI_DCR_HTCIE ; 
 int CS4281PCI_DCR_MSK ; 
 int CS4281PCI_DCR_TCIE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int CS4281PCI_DMR_AUTO ; 
 int CS4281PCI_DMR_DMA ; 
 int CS4281PCI_DMR_TR_PLAY ; 
 int CS4281PCI_DMR_TR_REC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int CS4281PCI_FCR_FEN ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 int CS4281PCI_FCR_PSH ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  CS4281PCI_HIMR ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int CS4281PCI_HIMR_DMAI ; 
 int /*<<< orphan*/  CS4281PCI_LPCM_PLAY_SLOT ; 
 int /*<<< orphan*/  CS4281PCI_LPCM_REC_SLOT ; 
 int /*<<< orphan*/  CS4281PCI_PPLVC ; 
 int /*<<< orphan*/  CS4281PCI_PPRVC ; 
 int /*<<< orphan*/  CS4281PCI_RPCM_PLAY_SLOT ; 
 int /*<<< orphan*/  CS4281PCI_RPCM_REC_SLOT ; 
 int /*<<< orphan*/  CS4281PCI_SERMC ; 
 int CS4281PCI_SERMC_PTC_AC97 ; 
 int /*<<< orphan*/  CS4281PCI_SPMC ; 
 int CS4281PCI_SPMC_RSTN ; 
 int /*<<< orphan*/  CS4281PCI_SRCSA ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CS4281PCI_SSPM ; 
 int CS4281PCI_SSPM_ACLEN ; 
 int CS4281PCI_SSPM_CSRCEN ; 
 int CS4281PCI_SSPM_MIXEN ; 
 int CS4281PCI_SSPM_PSRCEN ; 
 int /*<<< orphan*/  CS4281_DMA_PLAY ; 
 int /*<<< orphan*/  CS4281_DMA_REC ; 
 scalar_t__ CS4281_FIFO_SIZE ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (struct sc_info*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC22(struct sc_info *sc)
{
    u_int32_t i, v;

    /* (0) Blast clock register and serial port */
    FUNC19(sc, CS4281PCI_CLKCR1, 0);
    FUNC19(sc, CS4281PCI_SERMC,  0);

    /* (1) Make ESYN 0 to turn sync pulse on AC97 link */
    FUNC19(sc, CS4281PCI_ACCTL, 0);
    FUNC14(50);

    /* (2) Effect Reset */
    FUNC19(sc, CS4281PCI_SPMC, 0);
    FUNC14(100);
    FUNC19(sc, CS4281PCI_SPMC, CS4281PCI_SPMC_RSTN);
    /* Wait 50ms for ABITCLK to become stable */
    FUNC14(50000);

    /* (3) Enable Sound System Clocks */
    FUNC19(sc, CS4281PCI_CLKCR1, CS4281PCI_CLKCR1_DLLP);
    FUNC14(50000); /* Wait for PLL to stabilize */
    FUNC19(sc, CS4281PCI_CLKCR1,
	      CS4281PCI_CLKCR1_DLLP | CS4281PCI_CLKCR1_SWCE);

    /* (4) Power Up - this combination is essential. */
    FUNC17(sc, CS4281PCI_SSPM,
		CS4281PCI_SSPM_ACLEN | CS4281PCI_SSPM_PSRCEN |
		CS4281PCI_SSPM_CSRCEN | CS4281PCI_SSPM_MIXEN);

    /* (5) Wait for clock stabilization */
    if (FUNC18(sc,
		       CS4281PCI_CLKCR1,
		       CS4281PCI_CLKCR1_DLLRDY,
		       250) == 0) {
	FUNC21(sc->dev, "Clock stabilization failed\n");
	return -1;
    }

    /* (6) Enable ASYNC generation. */
    FUNC19(sc, CS4281PCI_ACCTL,CS4281PCI_ACCTL_ESYN);

    /* Wait to allow AC97 to start generating clock bit */
    FUNC14(50000);

    /* Set AC97 timing */
    FUNC19(sc, CS4281PCI_SERMC, CS4281PCI_SERMC_PTC_AC97);

    /* (7) Wait for AC97 ready signal */
    if (FUNC18(sc, CS4281PCI_ACSTS, CS4281PCI_ACSTS_CRDY, 250) == 0) {
	FUNC21(sc->dev, "codec did not avail\n");
	return -1;
    }

    /* (8) Assert valid frame signal to begin sending commands to
     *     AC97 codec */
    FUNC19(sc,
	      CS4281PCI_ACCTL,
	      CS4281PCI_ACCTL_VFRM | CS4281PCI_ACCTL_ESYN);

    /* (9) Wait for codec calibration */
    for(i = 0 ; i < 1000; i++) {
	FUNC14(10000);
	v = FUNC16(0, sc, AC97_REG_POWER);
	if ((v & 0x0f) == 0x0f) {
	    break;
	}
    }
    if (i == 1000) {
	FUNC21(sc->dev, "codec failed to calibrate\n");
	return -1;
    }

    /* (10) Set AC97 timing */
    FUNC19(sc, CS4281PCI_SERMC, CS4281PCI_SERMC_PTC_AC97);

    /* (11) Wait for valid data to arrive */
    if (FUNC18(sc,
		       CS4281PCI_ACISV,
		       FUNC0(3) | FUNC0(4),
		       10000) == 0) {
	FUNC21(sc->dev, "cs4281 never got valid data\n");
	return -1;
    }

    /* (12) Start digital data transfer of audio data to codec */
    FUNC19(sc,
	      CS4281PCI_ACOSV,
	      FUNC1(3) | FUNC1(4));

    /* Set Master and headphone to max */
    FUNC20(0, sc, AC97_MIX_AUXOUT, 0);
    FUNC20(0, sc, AC97_MIX_MASTER, 0);

    /* Power on the DAC */
    v = FUNC16(0, sc, AC97_REG_POWER) & 0xfdff;
    FUNC20(0, sc, AC97_REG_POWER, v);

    /* Wait until DAC state ready */
    for(i = 0; i < 320; i++) {
	FUNC14(100);
	v = FUNC16(0, sc, AC97_REG_POWER);
	if (v & 0x02) break;
    }

    /* Power on the ADC */
    v = FUNC16(0, sc, AC97_REG_POWER) & 0xfeff;
    FUNC20(0, sc, AC97_REG_POWER, v);

    /* Wait until ADC state ready */
    for(i = 0; i < 320; i++) {
	FUNC14(100);
	v = FUNC16(0, sc, AC97_REG_POWER);
	if (v & 0x01) break;
    }

    /* FIFO configuration (driver is DMA orientated, implicit FIFO) */
    /* Play FIFO */

    v = FUNC7(CS4281PCI_RPCM_PLAY_SLOT) |
	FUNC5(CS4281PCI_LPCM_PLAY_SLOT) |
	FUNC8(CS4281_FIFO_SIZE)|
	FUNC6(0);
    FUNC19(sc, FUNC4(CS4281_DMA_PLAY), v);

    FUNC19(sc, FUNC4(CS4281_DMA_PLAY), v | CS4281PCI_FCR_FEN);

    /* Record FIFO */
    v = FUNC7(CS4281PCI_RPCM_REC_SLOT) |
	FUNC5(CS4281PCI_LPCM_REC_SLOT) |
	FUNC8(CS4281_FIFO_SIZE)|
	FUNC6(CS4281_FIFO_SIZE + 1);
    FUNC19(sc, FUNC4(CS4281_DMA_REC), v | CS4281PCI_FCR_PSH);
    FUNC19(sc, FUNC4(CS4281_DMA_REC), v | CS4281PCI_FCR_FEN);

    /* Match AC97 slots to FIFOs */
    v = FUNC12(CS4281PCI_LPCM_PLAY_SLOT) |
	FUNC13(CS4281PCI_RPCM_PLAY_SLOT) |
	FUNC10(CS4281PCI_LPCM_REC_SLOT) |
	FUNC11(CS4281PCI_RPCM_REC_SLOT);
    FUNC19(sc, CS4281PCI_SRCSA, v);

    /* Set Auto-Initialize and set directions */
    FUNC19(sc,
	      FUNC3(CS4281_DMA_PLAY),
	      CS4281PCI_DMR_DMA  |
	      CS4281PCI_DMR_AUTO |
	      CS4281PCI_DMR_TR_PLAY);
    FUNC19(sc,
	      FUNC3(CS4281_DMA_REC),
	      CS4281PCI_DMR_DMA  |
	      CS4281PCI_DMR_AUTO |
	      CS4281PCI_DMR_TR_REC);

    /* Enable half and empty buffer interrupts keeping DMA paused */
    FUNC19(sc,
	      FUNC2(CS4281_DMA_PLAY),
	      CS4281PCI_DCR_TCIE | CS4281PCI_DCR_HTCIE | CS4281PCI_DCR_MSK);
    FUNC19(sc,
	      FUNC2(CS4281_DMA_REC),
	      CS4281PCI_DCR_TCIE | CS4281PCI_DCR_HTCIE | CS4281PCI_DCR_MSK);

    /* Enable Interrupts */
    FUNC15(sc,
		CS4281PCI_HIMR,
		CS4281PCI_HIMR_DMAI |
		FUNC9(CS4281_DMA_PLAY) |
		FUNC9(CS4281_DMA_REC));

    /* Set playback volume */
    FUNC19(sc, CS4281PCI_PPLVC, 7);
    FUNC19(sc, CS4281PCI_PPRVC, 7);

    return 0;
}