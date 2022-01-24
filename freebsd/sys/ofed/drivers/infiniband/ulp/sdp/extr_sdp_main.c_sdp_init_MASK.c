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
struct sdp_sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int /*<<< orphan*/  UMA_ZONE_NOFREE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  maxsockets ; 
 int /*<<< orphan*/  maxsockets_change ; 
 int /*<<< orphan*/  rx_comp_wq ; 
 int /*<<< orphan*/  sdp_client ; 
 int /*<<< orphan*/  sdp_list ; 
 int /*<<< orphan*/  sdp_zone ; 
 int /*<<< orphan*/  sdp_zone_change ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void)
{

	FUNC1(&sdp_list);
	sdp_zone = FUNC4("sdp_sock", sizeof(struct sdp_sock),
	    NULL, NULL, NULL, NULL, UMA_ALIGN_PTR, UMA_ZONE_NOFREE);
	FUNC5(sdp_zone, maxsockets);
	FUNC0(maxsockets_change, sdp_zone_change, NULL,
		EVENTHANDLER_PRI_ANY);
	rx_comp_wq = FUNC2("rx_comp_wq");
	FUNC3(&sdp_client);
}