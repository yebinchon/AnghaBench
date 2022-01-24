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
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_CIM_HOST_ACC_CTRL ; 
 int /*<<< orphan*/  A_CIM_HOST_ACC_DATA ; 
 scalar_t__ CIM_CTL_BASE ; 
 int EBUSY ; 
 int F_HOSTBUSY ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC3(adapter_t *adap, unsigned int addr, unsigned int n,
			unsigned int *valp)
{
	int ret = 0;

	if (FUNC0(adap, A_CIM_HOST_ACC_CTRL) & F_HOSTBUSY)
		return -EBUSY;

	for ( ; !ret && n--; addr += 4) {
		FUNC2(adap, A_CIM_HOST_ACC_CTRL, CIM_CTL_BASE + addr);
		ret = FUNC1(adap, A_CIM_HOST_ACC_CTRL, F_HOSTBUSY,
				      0, 5, 2);
		if (!ret)
			*valp++ = FUNC0(adap, A_CIM_HOST_ACC_DATA);
	}
	return ret;
}