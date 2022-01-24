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
struct in_addr {int /*<<< orphan*/  s_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_igmp_sendlocal ; 
 scalar_t__ FUNC1 (struct in_addr const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline int
FUNC3(const struct in_addr addr)
{

	if (FUNC1(addr) ||
	    ((!V_igmp_sendlocal && FUNC0(FUNC2(addr.s_addr)))))
		return (0);

	return (1);
}