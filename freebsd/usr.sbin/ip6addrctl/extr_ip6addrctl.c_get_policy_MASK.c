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
struct in6_addrpolicy {int dummy; } ;
struct policyqueue {struct in6_addrpolicy pc_policy; } ;

/* Variables and functions */
 int CTL_NET ; 
 int IPPROTO_IPV6 ; 
 int IPV6CTL_ADDRCTLPOLICY ; 
 int PF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct policyqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct in6_addrpolicy*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  pc_entry ; 
 int /*<<< orphan*/  policyhead ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int*,int /*<<< orphan*/ ,struct in6_addrpolicy*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void)
{
	int mib[] = { CTL_NET, PF_INET6, IPPROTO_IPV6, IPV6CTL_ADDRCTLPOLICY };
	size_t l;
	struct in6_addrpolicy *buf;
	struct in6_addrpolicy *pol, *ep;

	if (FUNC7(mib, FUNC5(mib), NULL, &l, NULL, 0) < 0) {
		FUNC1(1, "sysctl(IPV6CTL_ADDRCTLPOLICY)");
		/* NOTREACHED */
	}
	if (l == 0) {
		FUNC6("no source-address-selection policy is installed\n");
		return;
	}
	if ((buf = FUNC4(l)) == NULL) {
		FUNC2(1, "malloc failed");
		/* NOTREACHED */
	}
	if (FUNC7(mib, FUNC5(mib), buf, &l, NULL, 0) < 0) {
		FUNC1(1, "sysctl(IPV6CTL_ADDRCTLPOLICY)");
		/* NOTREACHED */
	}

	ep = buf + l/sizeof(*buf);
	for (pol = buf; pol + 1 <= ep; pol++) {
		struct policyqueue *new;

		if ((new = FUNC4(sizeof(*new))) == NULL)
			FUNC2(1, "malloc failed\n");
		new->pc_policy = *pol;
		FUNC0(&policyhead, new, pc_entry);
	}

	FUNC3(buf);
}