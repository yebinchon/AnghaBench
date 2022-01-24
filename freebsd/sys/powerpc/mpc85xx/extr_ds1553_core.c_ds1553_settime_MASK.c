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
typedef  int uint8_t ;
struct timespec {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct ds1553_softc {int (* sc_read ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  (* sc_write ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;scalar_t__ year_offset; } ;
struct clocktime {scalar_t__ year; scalar_t__ mon; scalar_t__ day; scalar_t__ dow; scalar_t__ hour; scalar_t__ min; scalar_t__ sec; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int DS1553_BIT_WRITE ; 
 int DS1553_MASK_DATE ; 
 int DS1553_MASK_DAYOFWEEK ; 
 int DS1553_MASK_HOUR ; 
 int DS1553_MASK_MINUTES ; 
 int DS1553_MASK_MONTH ; 
 int DS1553_MASK_SECONDS ; 
 int /*<<< orphan*/  DS1553_OFF_CONTROL ; 
 int /*<<< orphan*/  DS1553_OFF_DATE ; 
 int /*<<< orphan*/  DS1553_OFF_DAYOFWEEK ; 
 int /*<<< orphan*/  DS1553_OFF_HOURS ; 
 int /*<<< orphan*/  DS1553_OFF_MINUTES ; 
 int /*<<< orphan*/  DS1553_OFF_MONTH ; 
 int /*<<< orphan*/  DS1553_OFF_SECONDS ; 
 int /*<<< orphan*/  DS1553_OFF_YEAR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct clocktime*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*,struct clocktime*) ; 
 struct ds1553_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC16(device_t dev, struct timespec *ts)
{
	struct clocktime ct;
	struct ds1553_softc *sc;
	uint8_t control;

	sc = FUNC3(dev);
	FUNC1(&ct, sizeof(struct clocktime));

	/* Accuracy is only one second. */
	if (ts->tv_nsec >= 500000000)
		ts->tv_sec++;
	ts->tv_nsec = 0;
	FUNC2(ts, &ct);

	ct.year -= sc->year_offset;

	FUNC4(&sc->sc_mtx);

	/* Halt updates to external registers */
	control = (*sc->sc_read)(dev, DS1553_OFF_CONTROL) | DS1553_BIT_WRITE;
	(*sc->sc_write)(dev, DS1553_OFF_CONTROL, control);

	(*sc->sc_write)(dev, DS1553_OFF_SECONDS, FUNC0(ct.sec) &
	    DS1553_MASK_SECONDS);
	(*sc->sc_write)(dev, DS1553_OFF_MINUTES, FUNC0(ct.min) &
	    DS1553_MASK_MINUTES);
	(*sc->sc_write)(dev, DS1553_OFF_HOURS, FUNC0(ct.hour) &
	    DS1553_MASK_HOUR);
	(*sc->sc_write)(dev, DS1553_OFF_DAYOFWEEK, FUNC0(ct.dow + 1) &
	    DS1553_MASK_DAYOFWEEK);
	(*sc->sc_write)(dev, DS1553_OFF_DATE, FUNC0(ct.day) &
	    DS1553_MASK_DATE);
	(*sc->sc_write)(dev, DS1553_OFF_MONTH, FUNC0(ct.mon) &
	    DS1553_MASK_MONTH);
	(*sc->sc_write)(dev, DS1553_OFF_YEAR, FUNC0(ct.year));

	/* Resume updates to external registers */
	control &= ~DS1553_BIT_WRITE;
	(*sc->sc_write)(dev, DS1553_OFF_CONTROL, control);

	FUNC5(&sc->sc_mtx);

	return (0);
}