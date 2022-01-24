#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct csr   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct nxprtc_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  csr ;
struct csr {int cs1; int cs2; int sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCF8563_R_CLKOUT ; 
 int PCF85xx_B_CS1_STOP ; 
 int PCF85xx_B_SECOND_OS ; 
 int /*<<< orphan*/  PCF85xx_R_CS1 ; 
 int /*<<< orphan*/  WAITFLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nxprtc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct nxprtc_softc *sc)
{
	struct csr {
		uint8_t	cs1;
		uint8_t	cs2;
		uint8_t sec;
	} csr;
	int err;

	/* Read the control and status registers. */
	if ((err = FUNC1(sc->dev, PCF85xx_R_CS1, &csr,
	    sizeof(csr), WAITFLAGS)) != 0){
		FUNC0(sc->dev, "cannot read RTC control regs\n");
		return (err);
	}

	/*
	 * Do a full init if...
	 *  - The OS (oscillator stopped) bit is set (all power was lost).  This
	 *    bit is called VL (Voltage Low) in the 8563 datasheet.
	 *  - The clock-increment STOP flag is set (this is just insane).
	 */
	if ((csr.cs1 & PCF85xx_B_CS1_STOP) || (csr.sec & PCF85xx_B_SECOND_OS)) {
		FUNC0(sc->dev, 
		    "WARNING: RTC battery failed; time is invalid\n");
		/*
		 * - Turn off the POR-Override bit (used for mfg test only), by
		 *   writing zero to cs 1 (all other bits power on as zero).
		 * - Turn off the clock output pin (to save battery power), by
		 *   writing zero to the clkout control reg.
		 */
		if ((err = FUNC2(sc, PCF85xx_R_CS1, 0)) != 0) {
			FUNC0(sc->dev, "cannot write CS1 reg\n");
			return (err);
		}

		if ((err = FUNC2(sc, PCF8563_R_CLKOUT, 0)) != 0) {
			FUNC0(sc->dev, "cannot write CS1 reg\n");
			return (err);
		}
	}

	return (0);
}