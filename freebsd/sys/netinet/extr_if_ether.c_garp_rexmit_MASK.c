#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* ifa_ifp; } ;
struct in_ifaddr {int ia_garp_count; TYPE_1__ ia_ifa; int /*<<< orphan*/  ia_garp_timer; } ;
struct TYPE_9__ {int /*<<< orphan*/  sin_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  if_vnet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC2 (struct in_ifaddr*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,void (*) (void*),struct in_ifaddr*) ; 
 int garp_rexmit_count ; 
 int hz ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC11(void *arg)
{
	struct in_ifaddr *ia = arg;

	if (FUNC8(&ia->ia_garp_timer) ||
	    !FUNC7(&ia->ia_garp_timer)) {
		FUNC4(ia->ia_ifa.ifa_ifp);
		FUNC10(&ia->ia_ifa);
		return;
	}

	FUNC1(ia->ia_ifa.ifa_ifp->if_vnet);

	/*
	 * Drop lock while the ARP request is generated.
	 */
	FUNC4(ia->ia_ifa.ifa_ifp);

	FUNC6(ia->ia_ifa.ifa_ifp, &FUNC2(ia)->sin_addr,
	    &FUNC2(ia)->sin_addr, FUNC5(ia->ia_ifa.ifa_ifp));

	/*
	 * Increment the count of retransmissions. If the count has reached the
	 * maximum value, stop sending the GARP packets. Otherwise, schedule
	 * the callout to retransmit another GARP packet.
	 */
	++ia->ia_garp_count;
	if (ia->ia_garp_count >= garp_rexmit_count) {
		FUNC10(&ia->ia_ifa);
	} else {
		int rescheduled;
		FUNC3(ia->ia_ifa.ifa_ifp);
		rescheduled = FUNC9(&ia->ia_garp_timer,
		    (1 << ia->ia_garp_count) * hz,
		    garp_rexmit, ia);
		FUNC4(ia->ia_ifa.ifa_ifp);
		if (rescheduled) {
			FUNC10(&ia->ia_ifa);
		}
	}

	FUNC0();
}