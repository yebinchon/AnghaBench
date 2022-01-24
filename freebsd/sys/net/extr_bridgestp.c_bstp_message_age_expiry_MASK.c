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
struct bstp_state {int dummy; } ;
struct bstp_port {scalar_t__ bp_infois; TYPE_1__* bp_ifp; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_xname; } ;

/* Variables and functions */
 scalar_t__ BSTP_INFO_AGED ; 
 scalar_t__ BSTP_INFO_RECEIVED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bstp_state*) ; 

__attribute__((used)) static void
FUNC2(struct bstp_state *bs, struct bstp_port *bp)
{
	if (bp->bp_infois == BSTP_INFO_RECEIVED) {
		bp->bp_infois = BSTP_INFO_AGED;
		FUNC1(bs);
		FUNC0("aged info on %s\n", bp->bp_ifp->if_xname);
	}
}