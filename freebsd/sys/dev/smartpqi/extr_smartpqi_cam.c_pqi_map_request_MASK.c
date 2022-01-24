#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
struct TYPE_9__ {int cm_flags; int /*<<< orphan*/  status; int /*<<< orphan*/  bcount; int /*<<< orphan*/  dvp; int /*<<< orphan*/  cm_datamap; union ccb* cm_ccb; TYPE_3__* softs; } ;
typedef  TYPE_2__ rcb_t ;
struct TYPE_8__ {int /*<<< orphan*/  pqi_buffer_dmat; } ;
struct TYPE_10__ {TYPE_1__ os_specific; } ;
typedef  TYPE_3__ pqisrc_softstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int PQI_CMD_MAPPED ; 
 int PQI_STATUS_SUCCESS ; 
 int /*<<< orphan*/  REQUEST_PENDING ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ccb*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pqi_request_map_helper ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC4( rcb_t *rcb )
{
	pqisrc_softstate_t *softs = rcb->softs;
	int error = PQI_STATUS_SUCCESS;
	union ccb *ccb = rcb->cm_ccb;

	FUNC1("IN\n");

	/* check that mapping is necessary */
	if (rcb->cm_flags & PQI_CMD_MAPPED)
		return(0);
	rcb->cm_flags |= PQI_CMD_MAPPED;

	if (rcb->bcount) {
		error = FUNC2(softs->os_specific.pqi_buffer_dmat,
			rcb->cm_datamap, ccb, pqi_request_map_helper, rcb, 0);
		if (error != 0){
			FUNC0(rcb->dvp, "bus_dmamap_load_ccb failed = %d count = %d\n", 
					error, rcb->bcount);
			return error;
		}
	} else {
		/*
		 * Set up the command to go to the controller.  If there are no
		 * data buffers associated with the command then it can bypass
		 * busdma.
		 */
		/* Call IO functions depending on pd or ld */
		rcb->status = REQUEST_PENDING;

		error = FUNC3(softs, rcb);

	}

	FUNC1("OUT error = %d\n", error);

	return error;
}