#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct octeon_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ link_up; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
struct TYPE_6__ {TYPE_2__ link; } ;
struct lio {int /*<<< orphan*/  link_changes; TYPE_3__ linfo; scalar_t__ intf_open; struct octeon_device* oct_dev; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  LIO_IFSTATE_RUNNING ; 
 struct lio* FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct lio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lio*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct ifnet *ifp)
{
	struct lio	*lio = FUNC0(ifp);
	struct octeon_device	*oct = lio->oct_dev;

	FUNC4(lio, LIO_IFSTATE_RUNNING);
	FUNC1(ifp, LINK_STATE_DOWN);

	lio->intf_open = 0;
	lio->linfo.link.s.link_up = 0;
	lio->link_changes++;

	FUNC5(lio, 0);

	/* Tell the stack that the interface is no longer active */
	FUNC2(ifp, 0, IFF_DRV_RUNNING);

	FUNC3(oct, "Interface is stopped\n");
}