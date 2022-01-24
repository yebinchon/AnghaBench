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
typedef  int u_int8_t ;
struct cs4231_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int AUTO_CAL_ENABLE ; 
 int AUTO_CAL_IN_PROG ; 
 int /*<<< orphan*/  CODEC_COLD_RESET ; 
 int /*<<< orphan*/  CS4231_IADDR ; 
 int /*<<< orphan*/  CS4231_IDATA ; 
 int /*<<< orphan*/  FUNC0 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct cs4231_softc*) ; 
 int CS_CLOCK_DATA_FORMAT ; 
 int CS_INTERFACE_CONFIG ; 
 int CS_IN_INIT ; 
 int FUNC3 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int CS_REC_FORMAT ; 
 int CS_TEST_AND_INIT ; 
 int CS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC4 (struct cs4231_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int MODE_CHANGE_ENABLE ; 
 int PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC6 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct cs4231_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct cs4231_softc *sc, int dir, u_int8_t fs)
{
	int i, doreset;
#ifdef CS4231_AUTO_CALIBRATION
	u_int8_t v;
#endif

	FUNC1(sc);

	/* set autocalibration */
	doreset = 0;
#ifdef CS4231_AUTO_CALIBRATION
	v = cs4231_read(sc, CS_INTERFACE_CONFIG) | AUTO_CAL_ENABLE;
	CS_WRITE(sc, CS4231_IADDR, MODE_CHANGE_ENABLE);
	CS_WRITE(sc, CS4231_IADDR, MODE_CHANGE_ENABLE | CS_INTERFACE_CONFIG);
	CS_WRITE(sc, CS4231_IDATA, v);
#endif

	/*
	 * We always need to write CS_CLOCK_DATA_FORMAT register since
	 * the clock frequency is shared with playback/capture.
	 */
	FUNC4(sc, CS4231_IADDR, MODE_CHANGE_ENABLE | CS_CLOCK_DATA_FORMAT);
	FUNC4(sc, CS4231_IDATA, fs);
	FUNC3(sc, CS4231_IDATA);
	FUNC3(sc, CS4231_IDATA);
	for (i = CS_TIMEOUT;
	    i && FUNC3(sc, CS4231_IADDR) == CS_IN_INIT; i--)
		FUNC5(10);
	if (i == 0) {
		FUNC9(sc->sc_dev, "timeout setting playback speed\n");
		doreset++;
	}

	/*
	 * capture channel
	 * cs4231 doesn't allow separate fs setup for playback/capture.
	 * I believe this will break full-duplex operation.
	 */
	if (dir == PCMDIR_REC) {
		FUNC4(sc, CS4231_IADDR, MODE_CHANGE_ENABLE | CS_REC_FORMAT);
		FUNC4(sc, CS4231_IDATA, fs);
		FUNC3(sc, CS4231_IDATA);
		FUNC3(sc, CS4231_IDATA);
		for (i = CS_TIMEOUT;
		    i && FUNC3(sc, CS4231_IADDR) == CS_IN_INIT; i--)
			FUNC5(10);
		if (i == 0) {
			FUNC9(sc->sc_dev,
			    "timeout setting capture format\n");
			doreset++;
		}
	}

	FUNC4(sc, CS4231_IADDR, 0);
	for (i = CS_TIMEOUT;
	    i && FUNC3(sc, CS4231_IADDR) == CS_IN_INIT; i--)
		FUNC5(10);
	if (i == 0) {
		FUNC9(sc->sc_dev, "timeout waiting for !MCE\n");
		doreset++;
	}

#ifdef CS4231_AUTO_CALIBRATION
	CS_WRITE(sc, CS4231_IADDR, CS_TEST_AND_INIT);
	for (i = CS_TIMEOUT;
	    i && CS_READ(sc, CS4231_IDATA) & AUTO_CAL_IN_PROG; i--)
		DELAY(10);
	if (i == 0) {
		device_printf(sc->sc_dev,
		    "timeout waiting for autocalibration\n");
		doreset++;
	}
#endif
	if (doreset) {
		/*
		 * Maybe the last resort to avoid a dreadful message like
		 * "pcm0:play:0: play interrupt timeout, channel dead" would
		 * be hardware reset.
		 */
		FUNC9(sc->sc_dev, "trying to hardware reset\n");
		FUNC6(sc);
		FUNC7(sc, CODEC_COLD_RESET);
		FUNC2(sc); /* XXX */
		if (FUNC10(sc->sc_dev) != 0) 
			FUNC9(sc->sc_dev,
			    "unable to reinitialize the mixer\n");
		FUNC0(sc);
	}
}