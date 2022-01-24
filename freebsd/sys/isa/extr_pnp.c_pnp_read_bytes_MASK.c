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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4(int amount, u_char **resourcesp, int *spacep, int *lenp)
{
	u_char *resources = *resourcesp;
	u_char *newres;
	int space = *spacep;
	int len = *lenp;

	if (space == 0) {
		space = 1024;
		resources = FUNC2(space, M_TEMP, M_NOWAIT);
		if (!resources)
			return (ENOMEM);
	}
	
	if (len + amount > space) {
		int extra = 1024;
		while (len + amount > space + extra)
			extra += 1024;
		newres = FUNC2(space + extra, M_TEMP, M_NOWAIT);
		if (!newres) {
			/* XXX: free resources */
			return (ENOMEM);
		}
		FUNC0(resources, newres, len);
		FUNC1(resources, M_TEMP);
		resources = newres;
		space += extra;
	}

	if (FUNC3(resources + len, amount) != amount)
		return (EINVAL);
	len += amount;

	*resourcesp = resources;
	*spacep = space;
	*lenp = len;

	return (0);
}