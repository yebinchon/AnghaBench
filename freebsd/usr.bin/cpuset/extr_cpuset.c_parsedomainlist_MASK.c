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
struct numa_policy {int policy; int /*<<< orphan*/ * name; } ;
struct bitset {int dummy; } ;
typedef  int /*<<< orphan*/  rootmask ;
typedef  int /*<<< orphan*/  domainset_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_LEVEL_ROOT ; 
 int /*<<< orphan*/  CPU_WHICH_PID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DOMAINSET_SETSIZE ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct bitset*,int /*<<< orphan*/ ) ; 
 struct numa_policy* policies ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(char *list, domainset_t *mask, int *policyp)
{
	domainset_t rootmask;
	struct numa_policy *policy;
	char *l;
	int p;

	/*
	 * Use the rootset's policy as the default for unspecified policies.
	 */
	if (FUNC1(CPU_LEVEL_ROOT, CPU_WHICH_PID, -1,
	    sizeof(rootmask), &rootmask, &p) != 0)
		FUNC2(EXIT_FAILURE, "getdomain");

	l = list;
	for (policy = &policies[0]; policy->name != NULL; policy++) {
		if (FUNC7(l, policy->name, FUNC6(policy->name)) == 0) {
			p = policy->policy;
			l += FUNC6(policy->name);
			if (*l != ':' && *l != '\0')
				FUNC3(EXIT_FAILURE, "Malformed list %s", list);
			if (*l == ':')
				l++;
			break;
		}
	}
	*policyp = p;
	if (FUNC5(l, "all") == 0 || *l == '\0') {
		FUNC0(&rootmask, mask);
		return;
	}
	FUNC4(l, (struct bitset *)mask, DOMAINSET_SETSIZE);
}