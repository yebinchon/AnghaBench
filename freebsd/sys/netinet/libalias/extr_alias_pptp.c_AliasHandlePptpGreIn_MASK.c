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
typedef  int /*<<< orphan*/  u_int32_t ;
struct libalias {int dummy; } ;
struct in_addr {int dummy; } ;
struct ip {struct in_addr ip_dst; int /*<<< orphan*/  ip_sum; int /*<<< orphan*/  ip_src; } ;
struct alias_link {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  gh_call_id; } ;
typedef  TYPE_1__ GreHdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct in_addr*,struct in_addr*,int) ; 
 struct alias_link* FUNC1 (struct libalias*,int /*<<< orphan*/ ,struct in_addr,int /*<<< orphan*/ ) ; 
 struct in_addr FUNC2 (struct alias_link*) ; 
 int /*<<< orphan*/  FUNC3 (struct alias_link*) ; 
 int PPTP_INIT_MASK ; 
 int PPTP_INIT_VALUE ; 
 scalar_t__ FUNC4 (struct ip*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct libalias *la, struct ip *pip)
{
	GreHdr *gr;
	struct alias_link *lnk;

	gr = (GreHdr *) FUNC4(pip);

	/* Check GRE header bits. */
	if ((FUNC5(*((u_int32_t *) gr)) & PPTP_INIT_MASK) != PPTP_INIT_VALUE)
		return (-1);

	lnk = FUNC1(la, pip->ip_src, pip->ip_dst, gr->gh_call_id);
	if (lnk != NULL) {
		struct in_addr src_addr = FUNC2(lnk);

		/* De-alias the Peer's Call Id. */
		gr->gh_call_id = FUNC3(lnk);

		/* Restore original IP address. */
		FUNC0(&pip->ip_sum,
		    &src_addr, &pip->ip_dst, 2);
		pip->ip_dst = src_addr;
	}
	return (0);
}