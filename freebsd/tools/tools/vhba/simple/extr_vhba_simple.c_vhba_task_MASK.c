#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* vhba; } ;
typedef  TYPE_2__ vhbasimple_t ;
typedef  union ccb {int dummy; } ccb ;
struct ccb_scsiio {int dummy; } ;
struct ccb_hdr {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  tqe; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  done; int /*<<< orphan*/  actv; } ;

/* Variables and functions */
 struct ccb_hdr* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ccb_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_4__ sim_links ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct ccb_scsiio*) ; 
 int /*<<< orphan*/  FUNC5 (union ccb*) ; 

__attribute__((used)) static void
FUNC6(void *arg, int pending)
{
	vhbasimple_t *vhbas = arg;
	struct ccb_hdr *ccbh;

	FUNC2(&vhbas->vhba->lock);
	while ((ccbh = FUNC0(&vhbas->vhba->actv)) != NULL) {
		FUNC1(&vhbas->vhba->actv, ccbh, sim_links.tqe);
                FUNC4(vhbas, (struct ccb_scsiio *)ccbh);
	}
	while ((ccbh = FUNC0(&vhbas->vhba->done)) != NULL) {
		FUNC1(&vhbas->vhba->done, ccbh, sim_links.tqe);
		FUNC5((union ccb *)ccbh);
	}
	FUNC3(&vhbas->vhba->lock);
}