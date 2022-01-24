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
struct siis_channel {int /*<<< orphan*/  r_mem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  SIIS_P_CTLSET ; 
 int SIIS_P_CTL_DEV_RESET ; 
 int /*<<< orphan*/  SIIS_P_STS ; 
 struct siis_channel* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct siis_channel *ch = FUNC3(dev);
	int timeout = 0;
	uint32_t val;

	FUNC1(ch->r_mem, SIIS_P_CTLSET, SIIS_P_CTL_DEV_RESET);
	while (((val = FUNC0(ch->r_mem, SIIS_P_STS)) &
	    SIIS_P_CTL_DEV_RESET) != 0) {
		FUNC2(100);
		if (timeout++ > 1000) {
			FUNC4(dev, "device reset stuck "
			    "(timeout 100ms) status = %08x\n", val);
			return (EBUSY);
		}
	}
	return (0);
}