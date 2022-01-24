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
struct amdtemp_softc {int /*<<< orphan*/  sc_offset; int /*<<< orphan*/  sc_smn; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  amdsensor_t ;

/* Variables and functions */
 int /*<<< orphan*/  AMDTEMP_15H_M60H_REPTMP_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct amdtemp_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC4(device_t dev, amdsensor_t sensor)
{
	struct amdtemp_softc *sc = FUNC3(dev);
	uint32_t val;
	int error;

	error = FUNC1(sc->sc_smn, AMDTEMP_15H_M60H_REPTMP_CTRL, &val);
	FUNC0(error == 0, ("amdsmn_read"));
	return (FUNC2(sc->sc_offset, val));
}