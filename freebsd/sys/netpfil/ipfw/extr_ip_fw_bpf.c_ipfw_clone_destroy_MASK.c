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
struct ifnet {scalar_t__ if_hdrlen; } ;

/* Variables and functions */
 scalar_t__ ETHER_HDR_LEN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * V_log_if ; 
 int /*<<< orphan*/ * V_pflog_if ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC4(struct ifnet *ifp)
{

	if (ifp->if_hdrlen == ETHER_HDR_LEN)
		V_log_if = NULL;
	else
		V_pflog_if = NULL;

	FUNC0();
	FUNC1(ifp);
	FUNC2(ifp);
	FUNC3(ifp);
}