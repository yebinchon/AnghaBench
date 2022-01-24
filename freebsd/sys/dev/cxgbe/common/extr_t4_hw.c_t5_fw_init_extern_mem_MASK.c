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
typedef  int u32 ;
struct adapter {int /*<<< orphan*/  pf; int /*<<< orphan*/  mbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_CMD_MAX_TIMEOUT ; 
 int /*<<< orphan*/  FW_PARAMS_MNEM_DEV ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_DEV_MCINIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int*,int /*<<< orphan*/ ) ; 

int FUNC4(struct adapter *adap)
{
	u32 params[1], val[1];
	int ret;

	if (!FUNC2(adap))
		return 0;

	val[0] = 0xff; /* Initialize all MCs */
	params[0] = (FUNC0(FW_PARAMS_MNEM_DEV) |
			FUNC1(FW_PARAMS_PARAM_DEV_MCINIT));
	ret = FUNC3(adap, adap->mbox, adap->pf, 0, 1, params, val,
			FW_CMD_MAX_TIMEOUT);

	return ret;
}