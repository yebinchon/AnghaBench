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
struct ads111x_softc {int cfgword; TYPE_1__* chipinfo; struct ads111x_channel* channels; } ;
struct ads111x_channel {int gainidx; int rateidx; } ;
typedef  int int64_t ;
struct TYPE_2__ {int* ratetab; int* rangetab; int rangediv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADS111x_CONF ; 
 int ADS111x_CONF_GAIN_SHIFT ; 
 int ADS111x_CONF_IDLE ; 
 int ADS111x_CONF_MUX_SHIFT ; 
 int ADS111x_CONF_OS_SHIFT ; 
 int ADS111x_CONF_RATE_SHIFT ; 
 int /*<<< orphan*/  ADS111x_CONV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EWOULDBLOCK ; 
 int FUNC1 (struct ads111x_softc*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct ads111x_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct ads111x_softc *sc, int channum, int *voltage) 
{
	struct ads111x_channel *chan;
	int err, cfgword, convword, rate, retries, waitns;
	int64_t fsrange;

	chan = &sc->channels[channum];

	/* Ask the chip to do a one-shot measurement of the given channel. */
	cfgword = sc->cfgword |
	    (1 << ADS111x_CONF_OS_SHIFT) |
	    (channum << ADS111x_CONF_MUX_SHIFT) |
	    (chan->gainidx << ADS111x_CONF_GAIN_SHIFT) |
	    (chan->rateidx << ADS111x_CONF_RATE_SHIFT);
	if ((err = FUNC2(sc, ADS111x_CONF, cfgword)) != 0)
		return (err);

	/*
	 * Calculate how long it will take to make the measurement at the
	 * current sampling rate (round up).  The measurement averaging time
	 * ranges from 300us to 125ms, so we yield the cpu while waiting.
	 */
	rate = sc->chipinfo->ratetab[chan->rateidx];
	waitns = (1000000000 + rate - 1) / rate;
	err = FUNC4("ads111x", FUNC3(waitns), 0, FUNC0(2));
	if (err != 0 && err != EWOULDBLOCK)
		return (err);

	/*
	 * In theory the measurement should be available now; we waited long
	 * enough.  However, the chip times its averaging intervals using an
	 * internal 1 MHz oscillator which likely isn't running at the same rate
	 * as the system clock, so we have to double-check that the measurement
	 * is complete before reading the result.  If it's not ready yet, yield
	 * the cpu again for 5% of the time we originally calculated.
	 *
	 * Unlike most i2c slaves, this device does not auto-increment the
	 * register number on reads, so we can't read both status and
	 * measurement in one operation.
	 */
	for (retries = 5; ; --retries) {
		if (retries == 0)
			return (EWOULDBLOCK);
		if ((err = FUNC1(sc, ADS111x_CONF, &cfgword)) != 0)
			return (err);
		if (cfgword & ADS111x_CONF_IDLE)
			break;
		FUNC4("ads111x", FUNC3(waitns / 20), 0, FUNC0(2));
	}

	/* Retrieve the sample and convert it to microvolts. */
	if ((err = FUNC1(sc, ADS111x_CONV, &convword)) != 0)
		return (err);
	fsrange = sc->chipinfo->rangetab[chan->gainidx];
	*voltage = (int)((convword * fsrange ) / sc->chipinfo->rangediv);

	return (err);
}