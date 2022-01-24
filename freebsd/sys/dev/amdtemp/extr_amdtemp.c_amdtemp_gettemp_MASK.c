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
struct amdtemp_softc {int /*<<< orphan*/  sc_offset; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  amdsensor_t ;

/* Variables and functions */
 int /*<<< orphan*/  AMDTEMP_REPTMP_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct amdtemp_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int32_t
FUNC3(device_t dev, amdsensor_t sensor)
{
	struct amdtemp_softc *sc = FUNC1(dev);
	uint32_t temp;

	temp = FUNC2(dev, AMDTEMP_REPTMP_CTRL, 4);
	return (FUNC0(sc->sc_offset, temp));
}