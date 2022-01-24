#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* if_pseudo_t ;
struct TYPE_5__ {int /*<<< orphan*/  ip_ifc; int /*<<< orphan*/  ip_lladdr_tag; int /*<<< orphan*/  ip_detach_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IFLIB ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  iflladdr_event ; 
 int /*<<< orphan*/  ifnet_departure_event ; 

void
FUNC4(if_pseudo_t ip)
{
	/* XXX check that is not still in use */
	FUNC3(ip);
	FUNC0(ifnet_departure_event, ip->ip_detach_tag);
	FUNC0(iflladdr_event, ip->ip_lladdr_tag);
	FUNC2(ip->ip_ifc);
	/* XXX free devclass */
	FUNC1(ip, M_IFLIB);
}