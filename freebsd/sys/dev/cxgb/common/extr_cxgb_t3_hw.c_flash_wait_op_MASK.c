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
 int EAGAIN ; 
 int /*<<< orphan*/  SF_RD_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(adapter_t *adapter, int attempts, int delay)
{
	int ret;
	u32 status;

	while (1) {
		if ((ret = FUNC2(adapter, 1, 1, SF_RD_STATUS)) != 0 ||
		    (ret = FUNC1(adapter, 1, 0, &status)) != 0)
			return ret;
		if (!(status & 1))
			return 0;
		if (--attempts == 0)
			return -EAGAIN;
		if (delay)
			FUNC0(delay);
	}
}