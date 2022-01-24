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
struct bhnd_pmu_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int bhnd_pmu_regulator ;

/* Variables and functions */
#define  BHND_REGULATOR_PAREF_LDO 128 
 int /*<<< orphan*/  FUNC0 (struct bhnd_pmu_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_pmu_softc*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  SET_LDO_VOLTAGE_PAREF ; 
 int /*<<< orphan*/  UINT8_MAX ; 
 int FUNC2 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bhnd_pmu_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, bhnd_pmu_regulator regulator,
    uint32_t value)
{
	struct bhnd_pmu_softc	*sc;
	int			 error;

	sc = FUNC3(dev);

	switch (regulator) {
	case BHND_REGULATOR_PAREF_LDO:
		if (value > UINT8_MAX)
			return (EINVAL);
	
		FUNC0(sc);
		error = FUNC2(sc, SET_LDO_VOLTAGE_PAREF,
		    value);
		FUNC1(sc);

		return (error);

	default:
		return (ENODEV);
	}
}