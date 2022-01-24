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
struct in6_addr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * s6id_list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ V_sid_default ; 
 size_t FUNC3 (struct in6_addr*) ; 

u_int32_t
FUNC4(struct in6_addr *addr)
{
	u_int32_t id;

	/*
	 * special case: The loopback address should be considered as
	 * link-local, but there's no ambiguity in the syntax.
	 */
	if (FUNC0(addr))
		return (0);

	/*
	 * XXX: 32-bit read is atomic on all our platforms, is it OK
	 * not to lock here?
	 */
	FUNC1();
	id = V_sid_default.s6id_list[FUNC3(addr)];
	FUNC2();
	return (id);
}