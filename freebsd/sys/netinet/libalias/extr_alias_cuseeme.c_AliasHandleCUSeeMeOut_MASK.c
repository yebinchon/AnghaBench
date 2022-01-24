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
typedef  scalar_t__ u_int32_t ;
struct udphdr {int /*<<< orphan*/  uh_dport; int /*<<< orphan*/  uh_ulen; } ;
struct libalias {int dummy; } ;
struct ip {int /*<<< orphan*/  ip_src; } ;
struct cu_header {scalar_t__ addr; } ;
struct alias_link {int dummy; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;

/* Variables and functions */
 struct alias_link* FUNC0 (struct libalias*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ FUNC1 (struct alias_link*) ; 
 int /*<<< orphan*/  FUNC2 (struct alias_link*) ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC3 (struct alias_link*) ; 
 struct udphdr* FUNC4 (struct ip*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct cu_header* FUNC6 (struct udphdr*) ; 

__attribute__((used)) static void
FUNC7(struct libalias *la, struct ip *pip, struct alias_link *lnk)
{
	struct udphdr *ud = FUNC4(pip);

	if (FUNC5(ud->uh_ulen) - sizeof(struct udphdr) >= sizeof(struct cu_header)) {
		struct cu_header *cu;
		struct alias_link *cu_lnk;

		cu = FUNC6(ud);
		if (cu->addr)
			cu->addr = (u_int32_t) FUNC1(lnk).s_addr;

		cu_lnk = FUNC0(la, pip->ip_src, FUNC2(lnk),
		    ud->uh_dport, 0, IPPROTO_UDP, 1);

#ifndef NO_FW_PUNCH
		if (cu_lnk)
			FUNC3(cu_lnk);
#endif
	}
}