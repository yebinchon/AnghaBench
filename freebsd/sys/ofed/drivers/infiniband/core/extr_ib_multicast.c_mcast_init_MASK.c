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

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mcast_client ; 
 int /*<<< orphan*/  mcast_wq ; 
 int /*<<< orphan*/  sa_client ; 

int FUNC5(void)
{
	int ret;

	mcast_wq = FUNC0("ib_mcast", WQ_MEM_RECLAIM);
	if (!mcast_wq)
		return -ENOMEM;

	FUNC3(&sa_client);

	ret = FUNC2(&mcast_client);
	if (ret)
		goto err;
	return 0;

err:
	FUNC4(&sa_client);
	FUNC1(mcast_wq);
	return ret;
}