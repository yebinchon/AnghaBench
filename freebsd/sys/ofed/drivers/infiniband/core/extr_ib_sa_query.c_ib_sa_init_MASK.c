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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  sa_client ; 
 int /*<<< orphan*/  tid ; 

int FUNC5(void)
{
	int ret;

	FUNC0(&tid, sizeof tid);

	ret = FUNC1(&sa_client);
	if (ret) {
		FUNC4("Couldn't register ib_sa client\n");
		goto err1;
	}

	ret = FUNC3();
	if (ret) {
		FUNC4("Couldn't initialize multicast handling\n");
		goto err2;
	}

	return 0;

err2:
	FUNC2(&sa_client);
err1:
	return ret;
}