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
 int IFNET_EVENT_PCP ; 
 scalar_t__ FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC3(void *arg, struct ifnet *ifp, int event)
{
	if (event != IFNET_EVENT_PCP || FUNC0(ifp))
		return;

	/* make sure GID table is reloaded */
	FUNC1(ifp);
	FUNC2(ifp);
}