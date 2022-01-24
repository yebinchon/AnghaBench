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
struct policyqueue {int /*<<< orphan*/  pc_policy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  SIOCDADDRCTL_POLICY ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 struct policyqueue* FUNC0 (int /*<<< orphan*/ *) ; 
 struct policyqueue* FUNC1 (struct policyqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pc_entry ; 
 int /*<<< orphan*/  policyhead ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(void)
{
	struct policyqueue *ent;
	int s;

	if ((s = FUNC5(AF_INET6, SOCK_DGRAM, IPPROTO_UDP)) < 0)
		FUNC3(1, "socket(UDP)");

	for (ent = FUNC0(&policyhead); ent;
	     ent = FUNC1(ent, pc_entry)) {
		if (FUNC4(s, SIOCDADDRCTL_POLICY, &ent->pc_policy))
			FUNC6("ioctl(SIOCDADDRCTL_POLICY)");
	}

	FUNC2(s);
}