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
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_SF_DATA ; 
 int /*<<< orphan*/  A_SF_OP ; 
 int EBUSY ; 
 int EINVAL ; 
 int F_BUSY ; 
 int /*<<< orphan*/  SF_ATTEMPTS ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(adapter_t *adapter, unsigned int byte_cnt, int cont,
		    u32 *valp)
{
	int ret;

	if (!byte_cnt || byte_cnt > 4)
		return -EINVAL;
	if (FUNC2(adapter, A_SF_OP) & F_BUSY)
		return -EBUSY;
	FUNC4(adapter, A_SF_OP, FUNC1(cont) | FUNC0(byte_cnt - 1));
	ret = FUNC3(adapter, A_SF_OP, F_BUSY, 0, SF_ATTEMPTS, 10);
	if (!ret)
		*valp = FUNC2(adapter, A_SF_DATA);
	return ret;
}