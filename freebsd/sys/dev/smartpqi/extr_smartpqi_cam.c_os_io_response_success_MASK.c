#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
struct TYPE_8__ {int /*<<< orphan*/  status; } ;
struct ccb_scsiio {TYPE_2__ ccb_h; } ;
struct TYPE_9__ {int /*<<< orphan*/  softs; int /*<<< orphan*/  status; TYPE_1__* cm_ccb; } ;
typedef  TYPE_3__ rcb_t ;
struct TYPE_7__ {int /*<<< orphan*/  csio; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  REQUEST_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ccb_scsiio*) ; 
 int /*<<< orphan*/  FUNC5 (union ccb*) ; 

void
FUNC6(rcb_t *rcb)
{
	struct ccb_scsiio		*csio;

	FUNC0("IN rcb = %p\n", rcb);

	if (rcb == NULL) 
		FUNC1("rcb is null");

	csio = (struct ccb_scsiio *)&rcb->cm_ccb->csio;
	
	if (csio == NULL) 
		FUNC1("csio is null");

	rcb->status = REQUEST_SUCCESS;
	csio->ccb_h.status = CAM_REQ_CMP;

	FUNC4(rcb->softs, csio);
	FUNC2(rcb);
	FUNC3(rcb);
	FUNC5((union ccb *)csio);

	FUNC0("OUT\n");
}