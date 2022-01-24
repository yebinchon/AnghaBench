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
 int /*<<< orphan*/  A_CIM_IBQ_DBG_CFG ; 
 int /*<<< orphan*/  A_CIM_IBQ_DBG_DATA ; 
 int CIM_IBQ_SIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  F_IBQDBGBUSY ; 
 int F_IBQDBGEN ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct adapter *adap, unsigned int qid, u32 *data, size_t n)
{
	int i, err, attempts;
	unsigned int addr;
	const unsigned int nwords = CIM_IBQ_SIZE * 4;

	if (qid > 5 || (n & 3))
		return -EINVAL;

	addr = qid * nwords;
	if (n > nwords)
		n = nwords;

	/* It might take 3-10ms before the IBQ debug read access is allowed.
	 * Wait for 1 Sec with a delay of 1 usec.
	 */
	attempts = 1000000;

	for (i = 0; i < n; i++, addr++) {
		FUNC3(adap, A_CIM_IBQ_DBG_CFG, FUNC0(addr) |
			     F_IBQDBGEN);
		err = FUNC2(adap, A_CIM_IBQ_DBG_CFG, F_IBQDBGBUSY, 0,
				      attempts, 1);
		if (err)
			return err;
		*data++ = FUNC1(adap, A_CIM_IBQ_DBG_DATA);
	}
	FUNC3(adap, A_CIM_IBQ_DBG_CFG, 0);
	return i;
}