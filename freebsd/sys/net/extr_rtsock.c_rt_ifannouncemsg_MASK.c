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
struct rt_addrinfo {int dummy; } ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  RTM_IFANNOUNCE ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC1 (struct ifnet*,int /*<<< orphan*/ ,int,struct rt_addrinfo*) ; 

void
FUNC2(struct ifnet *ifp, int what)
{
	struct mbuf *m;
	struct rt_addrinfo info;

	m = FUNC1(ifp, RTM_IFANNOUNCE, what, &info);
	if (m != NULL)
		FUNC0(m, AF_UNSPEC);
}