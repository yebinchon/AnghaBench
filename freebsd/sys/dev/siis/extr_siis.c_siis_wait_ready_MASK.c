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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EBUSY ; 
 int SIIS_P_CTL_READY ; 
 int /*<<< orphan*/  SIIS_P_STS ; 
 struct siis_channel* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, int t)
{
	struct siis_channel *ch = FUNC2(dev);
	int timeout = 0;
	uint32_t val;

	while (((val = FUNC0(ch->r_mem, SIIS_P_STS)) &
	    SIIS_P_CTL_READY) == 0) {
		FUNC1(1000);
		if (timeout++ > t) {
			FUNC3(dev, "port is not ready (timeout %dms) "
			    "status = %08x\n", t, val);
			return (EBUSY);
		}
	}
	return (0);
}