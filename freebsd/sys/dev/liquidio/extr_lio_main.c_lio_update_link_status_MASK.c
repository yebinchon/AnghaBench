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
union octeon_link_status {scalar_t__ link_status64; } ;
struct TYPE_4__ {scalar_t__ link_up; } ;
struct TYPE_5__ {scalar_t__ link_status64; TYPE_1__ s; } ;
struct TYPE_6__ {TYPE_2__ link; } ;
struct lio {TYPE_3__ linfo; int /*<<< orphan*/  link_changes; scalar_t__ intf_open; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 struct lio* FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 

__attribute__((used)) static inline void
FUNC3(struct ifnet *ifp, union octeon_link_status *ls)
{
	struct lio	*lio = FUNC0(ifp);
	int	changed = (lio->linfo.link.link_status64 != ls->link_status64);

	lio->linfo.link.link_status64 = ls->link_status64;

	if ((lio->intf_open) && (changed)) {
		FUNC2(ifp);
		lio->link_changes++;
		if (lio->linfo.link.s.link_up)
			FUNC1(ifp, LINK_STATE_UP);
		else
			FUNC1(ifp, LINK_STATE_DOWN);
	}
}