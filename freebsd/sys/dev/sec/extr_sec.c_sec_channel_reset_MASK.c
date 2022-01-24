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
typedef  int uint64_t ;
struct sec_softc {int sc_version; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SEC_CHAN_CCR_AWSE ; 
 int SEC_CHAN_CCR_BS ; 
 int SEC_CHAN_CCR_CDIE ; 
 int SEC_CHAN_CCR_CDWE ; 
 int SEC_CHAN_CCR_CON ; 
 int SEC_CHAN_CCR_NT ; 
 int SEC_CHAN_CCR_R ; 
 int SEC_CHAN_CCR_WGN ; 
 int FUNC2 (struct sec_softc*,int /*<<< orphan*/ ) ; 
 int SEC_TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (struct sec_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(struct sec_softc *sc, int channel, int full)
{
	int timeout = SEC_TIMEOUT;
	uint64_t bit = (full) ? SEC_CHAN_CCR_R : SEC_CHAN_CCR_CON;
	uint64_t reg;

	/* Reset Channel */
	reg = FUNC2(sc, FUNC1(channel));
	FUNC3(sc, FUNC1(channel), reg | bit);

	while (FUNC2(sc, FUNC1(channel)) & bit) {
		FUNC0(1000);
		timeout -= 1000;

		if (timeout < 0) {
			FUNC4(sc->sc_dev, "timeout while waiting for "
			    "channel reset!\n");
			return (ETIMEDOUT);
		}
	}

	if (full) {
		reg = SEC_CHAN_CCR_CDIE | SEC_CHAN_CCR_NT | SEC_CHAN_CCR_BS;

		switch(sc->sc_version) {
		case 2:
			reg |= SEC_CHAN_CCR_CDWE;
			break;
		case 3:
			reg |= SEC_CHAN_CCR_AWSE | SEC_CHAN_CCR_WGN;
			break;
		}

		FUNC3(sc, FUNC1(channel), reg);
	}

	return (0);
}