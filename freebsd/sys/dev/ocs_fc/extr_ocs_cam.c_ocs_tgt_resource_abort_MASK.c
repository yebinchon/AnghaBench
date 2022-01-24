#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* status; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef  scalar_t__ uint32_t ;
struct ocs_softc {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  inot; int /*<<< orphan*/  atio; } ;
typedef  TYPE_2__ ocs_tgt_resource_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_7__ {int /*<<< orphan*/  stqe; } ;

/* Variables and functions */
 void* CAM_REQ_ABORTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__ sim_links ; 
 int /*<<< orphan*/  FUNC2 (union ccb*) ; 

__attribute__((used)) static int32_t
FUNC3(struct ocs_softc *ocs, ocs_tgt_resource_t *trsrc)
{
	union ccb *ccb = NULL;
	uint32_t	count;

	count = 0;
	do {
		ccb = (union ccb *)FUNC0(&trsrc->atio);
		if (ccb) {
			FUNC1(&trsrc->atio, sim_links.stqe);
			ccb->ccb_h.status = CAM_REQ_ABORTED;
			FUNC2(ccb);
			count++;
		}
	} while (ccb);

	count = 0;
	do {
		ccb = (union ccb *)FUNC0(&trsrc->inot);
		if (ccb) {
			FUNC1(&trsrc->inot, sim_links.stqe);
			ccb->ccb_h.status = CAM_REQ_ABORTED;
			FUNC2(ccb);
			count++;
		}
	} while (ccb);

	return 0;
}