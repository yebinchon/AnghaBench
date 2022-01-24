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
struct in6_multi_head {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct in6_multi_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct in6_multi_head*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,struct in6_multi_head*) ; 

__attribute__((used)) static void
FUNC8(struct ifnet *ifp)
{
	struct in6_multi_head inmh;

	FUNC4(&inmh);
	FUNC2();
	FUNC0();
	FUNC7(ifp, &inmh);
	FUNC1();
	FUNC3();
	FUNC5(&inmh);

	/*
	 * Make sure all multicast deletions invoking if_ioctl() are
	 * completed before returning. Else we risk accessing a freed
	 * ifnet structure pointer.
	 */
	FUNC6();
}