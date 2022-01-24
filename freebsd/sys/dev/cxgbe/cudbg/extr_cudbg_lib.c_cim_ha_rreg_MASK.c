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
typedef  int /*<<< orphan*/  u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_CIM_HOST_ACC_CTRL ; 
 int /*<<< orphan*/  A_CIM_HOST_ACC_DATA ; 
 int FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct adapter *padap, u32 addr, u32 *val)
{
	int rc = 0;

	/* write register address into the A_CIM_HOST_ACC_CTRL */
	FUNC2(padap, A_CIM_HOST_ACC_CTRL, addr);

	/* Poll HOSTBUSY */
	rc = FUNC0(padap);
	if (rc)
		goto err;

	/* Read value from A_CIM_HOST_ACC_DATA */
	*val = FUNC1(padap, A_CIM_HOST_ACC_DATA);

err:
	return rc;
}