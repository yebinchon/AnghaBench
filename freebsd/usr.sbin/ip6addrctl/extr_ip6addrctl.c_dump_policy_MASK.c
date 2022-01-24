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
struct sockaddr {int dummy; } ;
struct in6_addrpolicy {int preced; int label; scalar_t__ use; int /*<<< orphan*/  addrmask; int /*<<< orphan*/  addr; } ;
struct policyqueue {struct in6_addrpolicy pc_policy; } ;
typedef  int /*<<< orphan*/  addrbuf ;

/* Variables and functions */
 int NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 struct policyqueue* FUNC0 (int /*<<< orphan*/ *) ; 
 struct policyqueue* FUNC1 (struct policyqueue*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sockaddr*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pc_entry ; 
 int /*<<< orphan*/  policyhead ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 size_t FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(void)
{
	size_t addrlen;
	char addrbuf[NI_MAXHOST];
	struct in6_addrpolicy *pol;
	struct policyqueue *ent;
	int plen, first = 1;

	for (ent = FUNC0(&policyhead); ent;
	     ent = FUNC1(ent, pc_entry)) {
		pol = &ent->pc_policy;
		if (first) {
			FUNC4("%-30s %5s %5s %8s\n",
			       "Prefix", "Prec", "Label", "Use");
			first = 0;
		}

		if ((FUNC2((struct sockaddr *)&pol->addr,
				 sizeof(pol->addr), addrbuf, sizeof(addrbuf),
				 NULL, 0, NI_NUMERICHOST))) {
			FUNC7("getnameinfo for prefix address failed");
			continue;
		}
		if ((plen = FUNC3(&pol->addrmask)) < 0) {
			FUNC7("invalid address mask");
			continue;
		}
		addrlen = FUNC6(addrbuf);
		if (addrlen + sizeof("/128") < sizeof(addrbuf)) {
			FUNC5(&addrbuf[addrlen],
				 sizeof(addrbuf) - addrlen - 1,
				 "/%d", plen);
			FUNC4("%-30s", addrbuf);
		} else		/* XXX */
			FUNC4("%s/%d", addrbuf, plen);
		FUNC4(" %5d %5d %8llu\n", pol->preced, pol->label,
		    (unsigned long long)pol->use);
	}
}