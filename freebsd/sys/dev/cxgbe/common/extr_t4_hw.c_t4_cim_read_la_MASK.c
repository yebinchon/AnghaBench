#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct TYPE_2__ {int cim_la_size; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_UP_UP_DBG_LA_CFG ; 
 int /*<<< orphan*/  A_UP_UP_DBG_LA_DATA ; 
 int ETIMEDOUT ; 
 unsigned int F_UPDBGLAEN ; 
 unsigned int F_UPDBGLARDEN ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int M_UPDBGLARDPTR ; 
 unsigned int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (struct adapter*) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ,int,unsigned int*) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC5(struct adapter *adap, u32 *la_buf, unsigned int *wrptr)
{
	int i, ret;
	unsigned int cfg, val, idx;

	ret = FUNC3(adap, A_UP_UP_DBG_LA_CFG, 1, &cfg);
	if (ret)
		return ret;

	if (cfg & F_UPDBGLAEN) {	/* LA is running, freeze it */
		ret = FUNC4(adap, A_UP_UP_DBG_LA_CFG, 0);
		if (ret)
			return ret;
	}

	ret = FUNC3(adap, A_UP_UP_DBG_LA_CFG, 1, &val);
	if (ret)
		goto restart;

	idx = FUNC0(val);
	if (wrptr)
		*wrptr = idx;

	for (i = 0; i < adap->params.cim_la_size; i++) {
		ret = FUNC4(adap, A_UP_UP_DBG_LA_CFG,
				    FUNC1(idx) | F_UPDBGLARDEN);
		if (ret)
			break;
		ret = FUNC3(adap, A_UP_UP_DBG_LA_CFG, 1, &val);
		if (ret)
			break;
		if (val & F_UPDBGLARDEN) {
			ret = -ETIMEDOUT;
			break;
		}
		ret = FUNC3(adap, A_UP_UP_DBG_LA_DATA, 1, &la_buf[i]);
		if (ret)
			break;

		/* address can't exceed 0xfff (UpDbgLaRdPtr is of 12-bits) */
		idx = (idx + 1) & M_UPDBGLARDPTR;
		/*
		 * Bits 0-3 of UpDbgLaRdPtr can be between 0000 to 1001 to
		 * identify the 32-bit portion of the full 312-bit data
		 */
		if (FUNC2(adap))
			while ((idx & 0xf) > 9)
				idx = (idx + 1) % M_UPDBGLARDPTR;
	}
restart:
	if (cfg & F_UPDBGLAEN) {
		int r = FUNC4(adap, A_UP_UP_DBG_LA_CFG,
				      cfg & ~F_UPDBGLARDEN);
		if (!ret)
			ret = r;
	}
	return ret;
}