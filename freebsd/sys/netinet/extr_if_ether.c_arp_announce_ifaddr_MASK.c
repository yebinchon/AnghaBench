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
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 scalar_t__ INADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct in_addr*,struct in_addr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(struct ifnet *ifp, struct in_addr addr, u_char *enaddr)
{

	if (FUNC1(addr.s_addr) != INADDR_ANY)
		FUNC0(ifp, &addr, &addr, enaddr);
}