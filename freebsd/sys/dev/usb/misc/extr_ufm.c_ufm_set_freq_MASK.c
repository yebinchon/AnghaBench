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
struct ufm_softc {int sc_freq; int /*<<< orphan*/  sc_mtx; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  UFM_CMD0 ; 
 int /*<<< orphan*/  UFM_CMD_SET_FREQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ufm_softc*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct ufm_softc *sc, void *addr)
{
	int freq = *(int *)addr;

	/*
	 * Freq now is in Hz.  We need to convert it to the frequency
	 * that the radio wants.  This frequency is 10.7MHz above
	 * the actual frequency.  We then need to convert to
	 * units of 12.5kHz.  We add one to the IFM to make rounding
	 * easier.
	 */
	FUNC0(&sc->sc_mtx);
	sc->sc_freq = freq;
	FUNC1(&sc->sc_mtx);

	freq = (freq + 10700001) / 12500;

	/* This appears to set the frequency */
	if (FUNC2(sc, UFM_CMD_SET_FREQ,
	    freq >> 8, freq, NULL) != 0) {
		return (EIO);
	}
	/* Not sure what this does */
	if (FUNC2(sc, UFM_CMD0,
	    0x96, 0xb7, NULL) != 0) {
		return (EIO);
	}
	return (0);
}