#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_5__ {scalar_t__ state; scalar_t__ handle; } ;
typedef  TYPE_1__ fcportdb_t ;
struct TYPE_6__ {TYPE_1__* portdb; } ;
typedef  TYPE_2__ fcparam ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FC_PORTDB_STATE_NIL ; 
 int MAX_FC_TARG ; 

int
FUNC1(ispsoftc_t *isp, int chan, uint16_t handle,
    fcportdb_t **lptr)
{
	fcparam *fcp = FUNC0(isp, chan);
	int i;

	for (i = 0; i < MAX_FC_TARG; i++) {
		fcportdb_t *lp = &fcp->portdb[i];

		if (lp->state == FC_PORTDB_STATE_NIL)
			continue;
		if (lp->handle == handle) {
			*lptr = lp;
			return (1);
		}
	}
	return (0);
}