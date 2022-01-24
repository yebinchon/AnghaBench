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
struct TYPE_2__ {int sf_nsec; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SF_OP ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,int,int) ; 
 int EINVAL ; 
 int SF_ERASE_SECTOR ; 
 int SF_WR_ENABLE ; 
 int FUNC1 (struct adapter*,int,int) ; 
 int FUNC2 (struct adapter*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct adapter *adapter, int start, int end)
{
	int ret = 0;

	if (end >= adapter->params.sf_nsec)
		return -EINVAL;

	while (start <= end) {
		if ((ret = FUNC2(adapter, 1, 0, 1, SF_WR_ENABLE)) != 0 ||
		    (ret = FUNC2(adapter, 4, 0, 1,
				     SF_ERASE_SECTOR | (start << 8))) != 0 ||
		    (ret = FUNC1(adapter, 14, 500)) != 0) {
			FUNC0(adapter,
				"erase of flash sector %d failed, error %d\n",
				start, ret);
			break;
		}
		start++;
	}
	FUNC3(adapter, A_SF_OP, 0);    /* unlock SF */
	return ret;
}