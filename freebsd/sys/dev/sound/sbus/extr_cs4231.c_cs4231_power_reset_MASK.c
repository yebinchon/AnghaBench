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
typedef  scalar_t__ u_int32_t ;
struct cs4231_softc {int sc_flags; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  APC_CSR ; 
 int APC_CSR_CODEC_RESET ; 
 int APC_CSR_RESET ; 
 int FUNC0 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cs4231_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  AUXIO_CODEC ; 
 scalar_t__ FUNC2 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cs4231_softc*,int /*<<< orphan*/ ,int) ; 
 int AUX_INPUT_MUTE ; 
 int CODEC_COLD_RESET ; 
 int CODEC_WARM_RESET ; 
 int /*<<< orphan*/  CS4231_IADDR ; 
 int CS4231_SBUS ; 
 int /*<<< orphan*/  CS4231_STATUS ; 
 int /*<<< orphan*/  CS_ALT_FEATURE1 ; 
 int /*<<< orphan*/  CS_ALT_FEATURE2 ; 
 int CS_DAC_ZERO ; 
 int CS_HPF_ENABLE ; 
 scalar_t__ CS_IN_INIT ; 
 int /*<<< orphan*/  CS_LEFT_AUX1_CONTROL ; 
 int /*<<< orphan*/  CS_LEFT_OUTPUT_CONTROL ; 
 int /*<<< orphan*/  CS_MISC_INFO ; 
 int CS_MODE2 ; 
 int CS_OUTPUT_LVL ; 
 int /*<<< orphan*/  CS_PIN_CONTROL ; 
 scalar_t__ FUNC4 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CS_RIGHT_AUX1_CONTROL ; 
 int /*<<< orphan*/  CS_RIGHT_OUTPUT_CONTROL ; 
 int CS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC5 (struct cs4231_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int INTERRUPT_ENABLE ; 
 int OUTPUT_MUTE ; 
 int /*<<< orphan*/  FUNC7 (struct cs4231_softc*) ; 
 int FUNC8 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cs4231_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC11(struct cs4231_softc *sc, int how)
{
	u_int32_t v;
	int i;

	if ((sc->sc_flags & CS4231_SBUS) != 0) {
		FUNC1(sc, APC_CSR, APC_CSR_RESET);
		FUNC6(10);
		FUNC1(sc, APC_CSR, 0);
		FUNC6(10);
		FUNC1(sc,
		    APC_CSR, FUNC0(sc, APC_CSR) | APC_CSR_CODEC_RESET);
		FUNC6(20);
		FUNC1(sc,
		    APC_CSR, FUNC0(sc, APC_CSR) & (~APC_CSR_CODEC_RESET));
	} else {
		v = FUNC2(sc, AUXIO_CODEC);
		if (how == CODEC_WARM_RESET && v != 0) {
			FUNC3(sc, AUXIO_CODEC, 0);
			FUNC6(20);
		} else if (how == CODEC_COLD_RESET){
			FUNC3(sc, AUXIO_CODEC, 1);
			FUNC6(20);
			FUNC3(sc, AUXIO_CODEC, 0);
			FUNC6(20);
		}
		FUNC7(sc);
	}

	for (i = CS_TIMEOUT;
	    i && FUNC4(sc, CS4231_IADDR) == CS_IN_INIT; i--)
		FUNC6(10);
	if (i == 0)
		FUNC10(sc->sc_dev, "timeout waiting for reset\n");

	/* turn on cs4231 mode */
	FUNC9(sc, CS_MISC_INFO,
	    FUNC8(sc, CS_MISC_INFO) | CS_MODE2);
	/* enable interrupts & clear CSR */
        FUNC9(sc, CS_PIN_CONTROL,
            FUNC8(sc, CS_PIN_CONTROL) | INTERRUPT_ENABLE);
	FUNC5(sc, CS4231_STATUS, 0);
	/* enable DAC output */
	FUNC9(sc, CS_LEFT_OUTPUT_CONTROL,
	    FUNC8(sc, CS_LEFT_OUTPUT_CONTROL) & ~OUTPUT_MUTE);
	FUNC9(sc, CS_RIGHT_OUTPUT_CONTROL,
	    FUNC8(sc, CS_RIGHT_OUTPUT_CONTROL) & ~OUTPUT_MUTE);
	/* mute AUX1 since it generates noises */
	FUNC9(sc, CS_LEFT_AUX1_CONTROL,
	    FUNC8(sc, CS_LEFT_AUX1_CONTROL) | AUX_INPUT_MUTE);
	FUNC9(sc, CS_RIGHT_AUX1_CONTROL,
	    FUNC8(sc, CS_RIGHT_AUX1_CONTROL) | AUX_INPUT_MUTE);
	/* protect buffer underrun and set output level to 0dB */
	FUNC9(sc, CS_ALT_FEATURE1,
	    FUNC8(sc, CS_ALT_FEATURE1) | CS_DAC_ZERO | CS_OUTPUT_LVL);
	/* enable high pass filter, dual xtal was disabled due to noises */
	FUNC9(sc, CS_ALT_FEATURE2,
	    FUNC8(sc, CS_ALT_FEATURE2) | CS_HPF_ENABLE);
}