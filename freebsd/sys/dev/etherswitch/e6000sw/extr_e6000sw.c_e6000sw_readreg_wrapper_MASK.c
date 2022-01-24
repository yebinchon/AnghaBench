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
typedef  int /*<<< orphan*/  e6000sw_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int REG_GLOBAL2 ; 
 int REG_NUM_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, int addr_reg)
{
	e6000sw_softc_t *sc;

	sc = FUNC1(dev);
	if ((addr_reg > (REG_GLOBAL2 * 32 + REG_NUM_MAX)) ||
	    (addr_reg < (FUNC0(sc, 0) * 32))) {
		FUNC2(dev, "Wrong register address.\n");
		return (EINVAL);
	}

	return (FUNC3(FUNC1(dev), addr_reg / 32,
	    addr_reg % 32));
}