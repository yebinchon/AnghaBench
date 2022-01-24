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
typedef  int /*<<< orphan*/  uint64_t ;
struct in6_ifstat {int dummy; } ;
struct in6_ifextra {struct in6_ifextra* icmp6_ifstat; struct in6_ifextra* in6_ifstat; int /*<<< orphan*/  lltable; int /*<<< orphan*/  nd_ifinfo; int /*<<< orphan*/  scope6_id; } ;
struct ifnet {int dummy; } ;
struct icmp6_ifstat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct in6_ifextra*,int) ; 
 int /*<<< orphan*/  M_IFADDR ; 
 int /*<<< orphan*/  FUNC1 (struct in6_ifextra*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct ifnet *ifp, void *aux)
{
	struct in6_ifextra *ext = (struct in6_ifextra *)aux;

	FUNC3(ifp);
	FUNC5(ext->scope6_id);
	FUNC4(ifp, ext->nd_ifinfo);
	FUNC2(ext->lltable);
	FUNC0(ext->in6_ifstat,
	    sizeof(struct in6_ifstat) / sizeof(uint64_t));
	FUNC1(ext->in6_ifstat, M_IFADDR);
	FUNC0(ext->icmp6_ifstat,
	    sizeof(struct icmp6_ifstat) / sizeof(uint64_t));
	FUNC1(ext->icmp6_ifstat, M_IFADDR);
	FUNC1(ext, M_IFADDR);
}