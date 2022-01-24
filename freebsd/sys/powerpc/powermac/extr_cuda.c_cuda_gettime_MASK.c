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
typedef  int /*<<< orphan*/  uint8_t ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct cuda_softc {int sc_rtc; int /*<<< orphan*/  sc_mutex; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_READ_RTC ; 
 int /*<<< orphan*/  CUDA_PSEUDO ; 
 scalar_t__ DIFF19041970 ; 
 int /*<<< orphan*/  FUNC0 (struct cuda_softc*,int,int,int /*<<< orphan*/ *) ; 
 struct cuda_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev, struct timespec *ts)
{
	struct cuda_softc *sc = FUNC1(dev);
	uint8_t cmd[] = {CUDA_PSEUDO, CMD_READ_RTC};

	FUNC2(&sc->sc_mutex);
	sc->sc_rtc = -1;
	FUNC0(sc, 1, 2, cmd);
	if (sc->sc_rtc == -1)
		FUNC3(&sc->sc_rtc, &sc->sc_mutex, 0, "rtc", 100);

	ts->tv_sec = sc->sc_rtc - DIFF19041970;
	ts->tv_nsec = 0;
	FUNC4(&sc->sc_mutex);

	return (0);
}