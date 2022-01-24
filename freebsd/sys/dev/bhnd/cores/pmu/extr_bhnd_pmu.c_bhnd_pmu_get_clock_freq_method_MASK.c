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
typedef  int /*<<< orphan*/  uint32_t ;
struct bhnd_pmu_softc {int /*<<< orphan*/  query; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int bhnd_clock ;

/* Variables and functions */
#define  BHND_CLOCK_ALP 131 
#define  BHND_CLOCK_DYN 130 
#define  BHND_CLOCK_HT 129 
#define  BHND_CLOCK_ILP 128 
 int /*<<< orphan*/  FUNC0 (struct bhnd_pmu_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_pmu_softc*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct bhnd_pmu_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, bhnd_clock clock, uint32_t *freq)
{
	struct bhnd_pmu_softc	*sc = FUNC5(dev);

	FUNC0(sc);
	switch (clock) {
	case BHND_CLOCK_HT:
		*freq = FUNC4(&sc->query);
		break;

	case BHND_CLOCK_ALP:
		*freq = FUNC2(&sc->query);
		break;

	case BHND_CLOCK_ILP:
		*freq = FUNC3(&sc->query);
		break;

	case BHND_CLOCK_DYN:
	default:
		FUNC1(sc);
		return (ENODEV);
	}

	FUNC1(sc);
	return (0);
}