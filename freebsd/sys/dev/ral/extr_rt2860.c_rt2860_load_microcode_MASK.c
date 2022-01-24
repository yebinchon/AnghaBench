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
struct rt2860_softc {int /*<<< orphan*/  sc_dev; } ;
struct firmware {int /*<<< orphan*/  datasize; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FIRMWARE_UNLOAD ; 
 int /*<<< orphan*/  FUNC1 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2860_softc*) ; 
 int FUNC5 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2860_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2860_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT2860_FW_BASE ; 
 int /*<<< orphan*/  RT2860_H2M_BBPAGENT ; 
 int /*<<< orphan*/  RT2860_H2M_MAILBOX ; 
 int /*<<< orphan*/  RT2860_HST_PM_SEL ; 
 int RT2860_MCU_READY ; 
 int /*<<< orphan*/  RT2860_MCU_RESET ; 
 int /*<<< orphan*/  RT2860_SYS_CTRL ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 struct firmware* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct firmware const*,int /*<<< orphan*/ ) ; 

int
FUNC12(struct rt2860_softc *sc)
{
	const struct firmware *fp;
	int ntries, error;

	FUNC4(sc);

	FUNC6(sc);
	fp = FUNC10("rt2860fw");
	FUNC3(sc);
	if (fp == NULL) {
		FUNC9(sc->sc_dev,
		    "unable to receive rt2860fw firmware image\n");
		return EINVAL;
	}

	/* set "host program ram write selection" bit */
	FUNC7(sc, RT2860_SYS_CTRL, RT2860_HST_PM_SEL);
	/* write microcode image */
	FUNC8(sc, RT2860_FW_BASE, fp->data, fp->datasize);
	/* kick microcontroller unit */
	FUNC7(sc, RT2860_SYS_CTRL, 0);
	FUNC2(sc);
	FUNC7(sc, RT2860_SYS_CTRL, RT2860_MCU_RESET);

	FUNC7(sc, RT2860_H2M_BBPAGENT, 0);
	FUNC7(sc, RT2860_H2M_MAILBOX, 0);

	/* wait until microcontroller is ready */
	FUNC1(sc);
	for (ntries = 0; ntries < 1000; ntries++) {
		if (FUNC5(sc, RT2860_SYS_CTRL) & RT2860_MCU_READY)
			break;
		FUNC0(1000);
	}
	if (ntries == 1000) {
		FUNC9(sc->sc_dev,
		    "timeout waiting for MCU to initialize\n");
		error = ETIMEDOUT;
	} else
		error = 0;

	FUNC11(fp, FIRMWARE_UNLOAD);
	return error;
}