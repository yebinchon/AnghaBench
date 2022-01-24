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
struct vnet {int dummy; } ;
struct TYPE_2__ {int prune; scalar_t__ purgeall; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct vnet*) ; 
 int /*<<< orphan*/  V_tcp_hc_callout ; 
 TYPE_1__ V_tcp_hostcache ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void (*) (void*),void*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	FUNC1((struct vnet *) arg);
	int all = 0;

	if (V_tcp_hostcache.purgeall) {
		all = 1;
		V_tcp_hostcache.purgeall = 0;
	}

	FUNC3(all);

	FUNC2(&V_tcp_hc_callout, V_tcp_hostcache.prune * hz,
	    tcp_hc_purge, arg);
	FUNC0();
}