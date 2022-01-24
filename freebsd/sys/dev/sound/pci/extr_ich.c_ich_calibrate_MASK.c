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
typedef  scalar_t__ uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ich_func; } ;
struct sc_info {int ac97rate; int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; TYPE_1__ intrhook; struct sc_chinfo* ch; } ;
struct sc_chinfo {scalar_t__ regbase; int blkcnt; scalar_t__ blksz; scalar_t__ desc_addr; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ICH_CALIBRATE_DONE ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*) ; 
 scalar_t__ ICH_REG_PI_BASE ; 
 scalar_t__ ICH_REG_X_BDBAR ; 
 scalar_t__ ICH_REG_X_CIV ; 
 scalar_t__ ICH_REG_X_CR ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*) ; 
 int ICH_X_CR_RPBM ; 
 int ICH_X_CR_RR ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC6 (struct sc_info*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct sc_info*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct sc_chinfo*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(void *arg)
{
	struct sc_info *sc;
	struct sc_chinfo *ch;
	struct timeval t1, t2;
	uint8_t ociv, nciv;
	uint32_t wait_us, actual_48k_rate, oblkcnt;

	sc = (struct sc_info *)arg;
	FUNC1(sc);
	ch = &sc->ch[1];

	if (sc->intrhook.ich_func != NULL) {
		FUNC4(&sc->intrhook);
		sc->intrhook.ich_func = NULL;
	}

	/*
	 * Grab audio from input for fixed interval and compare how
	 * much we actually get with what we expect.  Interval needs
	 * to be sufficiently short that no interrupts are
	 * generated.
	 */

	FUNC3(ch->regbase == ICH_REG_PI_BASE, ("wrong direction"));

	oblkcnt = ch->blkcnt;
	ch->blkcnt = 2;
	sc->flags |= ICH_CALIBRATE_DONE;
	FUNC2(sc);
	FUNC9(0, ch, FUNC12(ch->buffer) >> 1);
	FUNC1(sc);
	sc->flags &= ~ICH_CALIBRATE_DONE;

	/*
	 * our data format is stereo, 16 bit so each sample is 4 bytes.
	 * assuming we get 48000 samples per second, we get 192000 bytes/sec.
	 * we're going to start recording with interrupts disabled and measure
	 * the time taken for one block to complete.  we know the block size,
	 * we know the time in microseconds, we calculate the sample rate:
	 *
	 * actual_rate [bps] = bytes / (time [s] * 4)
	 * actual_rate [bps] = (bytes * 1000000) / (time [us] * 4)
	 * actual_rate [Hz] = (bytes * 250000) / time [us]
	 */

	/* prepare */
	ociv = FUNC6(sc, ch->regbase + ICH_REG_X_CIV, 1);
	nciv = ociv;
	FUNC8(sc, ch->regbase + ICH_REG_X_BDBAR, (uint32_t)(ch->desc_addr), 4);

	/* start */
	FUNC10(&t1);
	FUNC8(sc, ch->regbase + ICH_REG_X_CR, ICH_X_CR_RPBM, 1);

	/* wait */
	do {
		FUNC10(&t2);
		if (t2.tv_sec - t1.tv_sec > 1)
			break;
		nciv = FUNC6(sc, ch->regbase + ICH_REG_X_CIV, 1);
	} while (nciv == ociv);

	/* stop */
	FUNC8(sc, ch->regbase + ICH_REG_X_CR, 0, 1);

	/* reset */
	FUNC0(100);
	FUNC8(sc, ch->regbase + ICH_REG_X_CR, ICH_X_CR_RR, 1);
	ch->blkcnt = oblkcnt;

	/* turn time delta into us */
	wait_us = ((t2.tv_sec - t1.tv_sec) * 1000000) + t2.tv_usec - t1.tv_usec;

	if (nciv == ociv) {
		FUNC5(sc->dev, "ac97 link rate calibration timed out after %d us\n", wait_us);
		sc->flags |= ICH_CALIBRATE_DONE;
		FUNC2(sc);
		FUNC7(sc);
		return;
	}

	/* Just in case the timecounter screwed. It is possible, really. */
	if (wait_us > 0)
		actual_48k_rate = ((uint64_t)ch->blksz * 250000) / wait_us;
	else
		actual_48k_rate = 48000;

	if (actual_48k_rate < 47500 || actual_48k_rate > 48500) {
		sc->ac97rate = actual_48k_rate;
	} else {
		sc->ac97rate = 48000;
	}

	if (bootverbose || sc->ac97rate != 48000) {
		FUNC5(sc->dev, "measured ac97 link rate at %d Hz", actual_48k_rate);
		if (sc->ac97rate != actual_48k_rate)
			FUNC11(", will use %d Hz", sc->ac97rate);
	 	FUNC11("\n");
	}
	sc->flags |= ICH_CALIBRATE_DONE;
	FUNC2(sc);

	FUNC7(sc);

	return;
}