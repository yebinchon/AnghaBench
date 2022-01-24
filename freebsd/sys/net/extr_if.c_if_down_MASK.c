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
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  IFNET_EVENT_DOWN ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifnet_event ; 

void
FUNC2(struct ifnet *ifp)
{

	FUNC0(ifnet_event, ifp, IFNET_EVENT_DOWN);
	FUNC1(ifp, IFF_UP, AF_UNSPEC);
}