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
typedef  int /*<<< orphan*/  u_int ;
struct bhnd_pwrctl_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int bhnd_clock ;

/* Variables and functions */
#define  BHND_CLOCK_HT 128 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct bhnd_pwrctl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_pwrctl_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_pwrctl_softc*) ; 
 struct bhnd_pwrctl_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, bhnd_clock clock,
    u_int *latency)
{
	struct bhnd_pwrctl_softc *sc = FUNC3(dev);

	switch (clock) {
	case BHND_CLOCK_HT:
		FUNC0(sc);
		*latency = FUNC2(sc);
		FUNC1(sc);

		return (0);

	default:
		return (ENODEV);
	}
}