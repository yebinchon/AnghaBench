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
typedef  int /*<<< orphan*/  u32 ;
struct adapter {TYPE_1__* chip_params; } ;
struct TYPE_2__ {int cim_num_obq; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_CIM_OBQ_DBG_CFG ; 
 int /*<<< orphan*/  A_CIM_OBQ_DBG_DATA ; 
 int /*<<< orphan*/  A_CIM_QUEUE_CONFIG_CTRL ; 
 int /*<<< orphan*/  A_CIM_QUEUE_CONFIG_REF ; 
 int EINVAL ; 
 int /*<<< orphan*/  F_OBQDBGBUSY ; 
 int F_OBQDBGEN ; 
 int F_OBQSELECT ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 void* FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct adapter *adap, unsigned int qid, u32 *data, size_t n)
{
	int i, err;
	unsigned int addr, v, nwords;
	int cim_num_obq = adap->chip_params->cim_num_obq;

	if ((qid > (cim_num_obq - 1)) || (n & 3))
		return -EINVAL;

	FUNC6(adap, A_CIM_QUEUE_CONFIG_REF, F_OBQSELECT |
		     FUNC3(qid));
	v = FUNC4(adap, A_CIM_QUEUE_CONFIG_CTRL);

	addr = FUNC0(v) * 64;    /* muliple of 256 -> muliple of 4 */
	nwords = FUNC1(v) * 64;  /* same */
	if (n > nwords)
		n = nwords;

	for (i = 0; i < n; i++, addr++) {
		FUNC6(adap, A_CIM_OBQ_DBG_CFG, FUNC2(addr) |
			     F_OBQDBGEN);
		err = FUNC5(adap, A_CIM_OBQ_DBG_CFG, F_OBQDBGBUSY, 0,
				      2, 1);
		if (err)
			return err;
		*data++ = FUNC4(adap, A_CIM_OBQ_DBG_DATA);
	}
	FUNC6(adap, A_CIM_OBQ_DBG_CFG, 0);
	return i;
}