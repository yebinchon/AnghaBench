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
struct udpcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPI_HASHFIELDS_2TUPLE ; 
 int /*<<< orphan*/  UDBHASHSIZE ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int /*<<< orphan*/  V_udb ; 
 int /*<<< orphan*/  V_udbinfo ; 
 int /*<<< orphan*/  V_udpcb_zone ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maxsockets ; 
 int /*<<< orphan*/  maxsockets_change ; 
 int /*<<< orphan*/  udp_inpcb_init ; 
 int /*<<< orphan*/  udp_zone_change ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void
FUNC5(void)
{

	/*
	 * For now default to 2-tuple UDP hashing - until the fragment
	 * reassembly code can also update the flowid.
	 *
	 * Once we can calculate the flowid that way and re-establish
	 * a 4-tuple, flip this to 4-tuple.
	 */
	FUNC1(&V_udbinfo, "udp", &V_udb, UDBHASHSIZE, UDBHASHSIZE,
	    "udp_inpcb", udp_inpcb_init, IPI_HASHFIELDS_2TUPLE);
	V_udpcb_zone = FUNC2("udpcb", sizeof(struct udpcb),
	    NULL, NULL, NULL, NULL, UMA_ALIGN_PTR, 0);
	FUNC3(V_udpcb_zone, maxsockets);
	FUNC4(V_udpcb_zone, "kern.ipc.maxsockets limit reached");
	FUNC0(maxsockets_change, udp_zone_change, NULL,
	    EVENTHANDLER_PRI_ANY);
}