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
struct TYPE_2__ {int /*<<< orphan*/  ifa_ifp; } ;
struct in_ifaddr {int ia_garp_count; TYPE_1__ ia_ifa; int /*<<< orphan*/  ia_garp_timer; } ;
struct ifaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct in_ifaddr*) ; 
 int /*<<< orphan*/  garp_rexmit ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (struct ifaddr*) ; 

__attribute__((used)) static void
FUNC4(struct ifaddr *ifa)
{
	struct in_ifaddr *ia = (struct in_ifaddr *) ifa;

	FUNC0(ia->ia_ifa.ifa_ifp);
	ia->ia_garp_count = 0;
	if (FUNC2(&ia->ia_garp_timer, (1 << ia->ia_garp_count) * hz,
	    garp_rexmit, ia) == 0) {
		FUNC3(ifa);
	}
	FUNC1(ia->ia_ifa.ifa_ifp);
}