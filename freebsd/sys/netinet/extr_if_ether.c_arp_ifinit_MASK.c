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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct ifnet {int dummy; } ;
struct ifaddr {struct sockaddr* ifa_addr; int /*<<< orphan*/ * ifa_carp; } ;
struct epoch_tracker {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 scalar_t__ INADDR_ANY ; 
 int /*<<< orphan*/  FUNC1 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC2 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,struct sockaddr const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,TYPE_1__,int /*<<< orphan*/ ) ; 
 scalar_t__ garp_rexmit_count ; 
 int /*<<< orphan*/  FUNC5 (struct ifaddr*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(struct ifnet *ifp, struct ifaddr *ifa)
{
	struct epoch_tracker et;
	const struct sockaddr_in *dst_in;
	const struct sockaddr *dst;

	if (ifa->ifa_carp != NULL)
		return;

	dst = ifa->ifa_addr;
	dst_in = (const struct sockaddr_in *)dst;

	if (FUNC6(dst_in->sin_addr.s_addr) == INADDR_ANY)
		return;
	FUNC1(et);
	FUNC4(ifp, dst_in->sin_addr, FUNC0(ifp));
	FUNC2(et);
	if (garp_rexmit_count > 0) {
		FUNC5(ifa);
	}

	FUNC3(ifp, dst);
}