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
typedef  int uint32_t ;
struct amdtemp_softc {int sc_offset; int /*<<< orphan*/  sc_smn; } ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  amdsensor_t ;

/* Variables and functions */
 int /*<<< orphan*/  AMDTEMP_17H_CUR_TMP ; 
 int AMDTEMP_17H_CUR_TMP_RANGE_SEL ; 
 scalar_t__ AMDTEMP_CURTMP_RANGE_ADJUST ; 
 scalar_t__ AMDTEMP_ZERO_C_TO_K ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct amdtemp_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC3(device_t dev, amdsensor_t sensor)
{
	struct amdtemp_softc *sc = FUNC2(dev);
	uint32_t temp, val;
	int error;

	error = FUNC1(sc->sc_smn, AMDTEMP_17H_CUR_TMP, &val);
	FUNC0(error == 0, ("amdsmn_read"));

	temp = ((val >> 21) & 0x7ff) * 5 / 4;
	if ((val & AMDTEMP_17H_CUR_TMP_RANGE_SEL) != 0)
		temp -= AMDTEMP_CURTMP_RANGE_ADJUST;
	temp += AMDTEMP_ZERO_C_TO_K + sc->sc_offset * 10;

	return (temp);
}