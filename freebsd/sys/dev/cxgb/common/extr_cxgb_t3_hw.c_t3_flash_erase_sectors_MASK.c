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
 int SF_ERASE_SECTOR ; 
 int SF_WR_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(adapter_t *adapter, int start, int end)
{
	while (start <= end) {
		int ret;

		if ((ret = FUNC1(adapter, 1, 0, SF_WR_ENABLE)) != 0 ||
		    (ret = FUNC1(adapter, 4, 0,
				     SF_ERASE_SECTOR | (start << 8))) != 0 ||
		    (ret = FUNC0(adapter, 5, 500)) != 0)
			return ret;
		start++;
	}
	return 0;
}