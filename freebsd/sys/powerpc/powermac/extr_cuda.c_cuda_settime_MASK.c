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
struct timespec {scalar_t__ tv_sec; } ;
struct cuda_softc {int /*<<< orphan*/  sc_mutex; } ;
typedef  int /*<<< orphan*/  sec ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_WRITE_RTC ; 
 int /*<<< orphan*/  CUDA_PSEUDO ; 
 scalar_t__ DIFF19041970 ; 
 int /*<<< orphan*/  FUNC0 (struct cuda_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct cuda_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev, struct timespec *ts)
{
	struct cuda_softc *sc = FUNC1(dev);
	uint8_t cmd[] = {CUDA_PSEUDO, CMD_WRITE_RTC, 0, 0, 0, 0};
	uint32_t sec;

	sec = ts->tv_sec + DIFF19041970;
	FUNC2(&cmd[2], &sec, sizeof(sec));

	FUNC3(&sc->sc_mutex);
	FUNC0(sc, 0, 6, cmd);
	FUNC4(&sc->sc_mutex);

	return (0);
}