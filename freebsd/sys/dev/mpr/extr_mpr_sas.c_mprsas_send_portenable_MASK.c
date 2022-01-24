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
struct mpr_softc {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  RequestFlags; } ;
struct TYPE_5__ {TYPE_1__ Default; } ;
struct mpr_command {int /*<<< orphan*/  cm_complete; scalar_t__ cm_req; int /*<<< orphan*/ * cm_sge; int /*<<< orphan*/ * cm_data; TYPE_2__ cm_desc; } ;
struct TYPE_6__ {scalar_t__ VP_ID; scalar_t__ MsgFlags; int /*<<< orphan*/  Function; } ;
typedef  TYPE_3__ MPI2_PORT_ENABLE_REQUEST ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  MPI2_FUNCTION_PORT_ENABLE ; 
 int /*<<< orphan*/  MPI2_REQ_DESCRIPT_FLAGS_DEFAULT_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct mpr_softc*) ; 
 int /*<<< orphan*/  MPR_XINFO ; 
 struct mpr_command* FUNC1 (struct mpr_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mpr_softc*,int /*<<< orphan*/ ,char*,struct mpr_command*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mpr_softc*,struct mpr_command*) ; 
 int /*<<< orphan*/  mprsas_portenable_complete ; 

__attribute__((used)) static int
FUNC4(struct mpr_softc *sc)
{
	MPI2_PORT_ENABLE_REQUEST *request;
	struct mpr_command *cm;

	FUNC0(sc);

	if ((cm = FUNC1(sc)) == NULL)
		return (EBUSY);
	request = (MPI2_PORT_ENABLE_REQUEST *)cm->cm_req;
	request->Function = MPI2_FUNCTION_PORT_ENABLE;
	request->MsgFlags = 0;
	request->VP_ID = 0;
	cm->cm_desc.Default.RequestFlags = MPI2_REQ_DESCRIPT_FLAGS_DEFAULT_TYPE;
	cm->cm_complete = mprsas_portenable_complete;
	cm->cm_data = NULL;
	cm->cm_sge = NULL;

	FUNC3(sc, cm);
	FUNC2(sc, MPR_XINFO, 
	    "mpr_send_portenable finished cm %p req %p complete %p\n",
	    cm, cm->cm_req, cm->cm_complete);
	return (0);
}