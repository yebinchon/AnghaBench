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
typedef  scalar_t__ uint32_t ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct pmu_softc {int /*<<< orphan*/  sc_mutex; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ DIFF19041970 ; 
 int /*<<< orphan*/  PMU_READ_RTC ; 
 struct pmu_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pmu_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev, struct timespec *ts)
{
	struct pmu_softc *sc = FUNC0(dev);
	uint8_t resp[16];
	uint32_t sec;

	FUNC2(&sc->sc_mutex);
	FUNC4(sc, PMU_READ_RTC, 0, NULL, 16, resp);
	FUNC3(&sc->sc_mutex);

	FUNC1(&sec, &resp[1], 4);
	ts->tv_sec = sec - DIFF19041970;
	ts->tv_nsec = 0;

	return (0);
}