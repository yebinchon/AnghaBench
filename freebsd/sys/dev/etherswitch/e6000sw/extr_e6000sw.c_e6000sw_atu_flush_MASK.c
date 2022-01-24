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
typedef  int /*<<< orphan*/  e6000sw_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATU_OPERATION ; 
 int ATU_UNIT_BUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int EBUSY ; 
 int NO_OPERATION ; 
 int /*<<< orphan*/  REG_GLOBAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, e6000sw_softc_t *sc, int flag)
{
	uint32_t reg;

	if (flag == NO_OPERATION)
		return (0);

	if (FUNC0(sc, ATU_OPERATION, ATU_UNIT_BUSY)) {
		FUNC1(dev, "ATU unit is busy, cannot access\n");
		return (EBUSY);
	}
	reg = FUNC2(sc, REG_GLOBAL, ATU_OPERATION);
	FUNC3(sc, REG_GLOBAL, ATU_OPERATION,
	    (reg | ATU_UNIT_BUSY | flag));
	if (FUNC0(sc, ATU_OPERATION, ATU_UNIT_BUSY))
		FUNC1(dev, "Timeout while flushing ATU\n");

	return (0);
}