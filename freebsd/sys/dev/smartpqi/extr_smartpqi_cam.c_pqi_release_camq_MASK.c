#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int status; int /*<<< orphan*/  path; } ;
struct ccb_scsiio {TYPE_1__ ccb_h; } ;
struct TYPE_10__ {TYPE_5__* softs; TYPE_2__* cm_ccb; } ;
typedef  TYPE_4__ rcb_t ;
struct TYPE_9__ {int pqi_flags; } ;
struct TYPE_11__ {TYPE_3__ os_specific; } ;
typedef  TYPE_5__ pqisrc_softstate_t ;
struct TYPE_8__ {int /*<<< orphan*/  csio; } ;

/* Variables and functions */
 int CAM_RELEASE_SIMQ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PQI_FLAG_BUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3( rcb_t *rcb )
{
	pqisrc_softstate_t *softs;
	struct ccb_scsiio *csio;

	csio = (struct ccb_scsiio *)&rcb->cm_ccb->csio;
	softs = rcb->softs;

	FUNC0("IN\n");

	if (softs->os_specific.pqi_flags & PQI_FLAG_BUSY) {
		softs->os_specific.pqi_flags &= ~PQI_FLAG_BUSY;
		if (csio->ccb_h.status & CAM_RELEASE_SIMQ)
			FUNC2(FUNC1(csio->ccb_h.path), 0);
		else
			csio->ccb_h.status |= CAM_RELEASE_SIMQ;
	}

	FUNC0("OUT\n");
}