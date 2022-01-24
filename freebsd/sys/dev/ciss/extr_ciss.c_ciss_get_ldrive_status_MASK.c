#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ciss_softc {int dummy; } ;
struct ciss_request {struct ciss_command* cr_cc; } ;
struct TYPE_8__ {int /*<<< orphan*/  lun; } ;
struct TYPE_9__ {TYPE_3__ logical; } ;
struct ciss_ldrive {TYPE_5__* cl_lstatus; int /*<<< orphan*/  cl_status; TYPE_4__ cl_address; int /*<<< orphan*/ * cl_controller; } ;
struct TYPE_7__ {int /*<<< orphan*/ * cdb; } ;
struct TYPE_6__ {int /*<<< orphan*/  address; } ;
struct ciss_command {TYPE_2__ cdb; TYPE_1__ header; } ;
struct ciss_bmic_cdb {int /*<<< orphan*/  log_drive; } ;
struct TYPE_10__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CISS_BMIC_ID_LSTATUS ; 
#define  CISS_CMD_STATUS_DATA_OVERRUN 130 
#define  CISS_CMD_STATUS_DATA_UNDERRUN 129 
#define  CISS_CMD_STATUS_SUCCESS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ciss_softc*,struct ciss_request**,int /*<<< orphan*/ ,void**,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ciss_softc*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct ciss_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct ciss_request*,int*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ciss_request*,int) ; 

__attribute__((used)) static int
FUNC8(struct ciss_softc *sc,  struct ciss_ldrive *ld)
{
    struct ciss_request		*cr;
    struct ciss_command		*cc;
    struct ciss_bmic_cdb	*cbc;
    int				error, command_status;

    /*
     * Build a CISS BMIC command to get the logical drive status.
     */
    if ((error = FUNC2(sc, &cr, CISS_BMIC_ID_LSTATUS,
				       (void **)&ld->cl_lstatus,
				       sizeof(*ld->cl_lstatus))) != 0)
	goto out;
    cc = cr->cr_cc;
    cc->header.address = *ld->cl_controller;	/* target controller */
    cbc = (struct ciss_bmic_cdb *)&(cc->cdb.cdb[0]);
    cbc->log_drive = FUNC0(ld->cl_address.logical.lun);

    /*
     * Submit the request and wait for it to complete.
     */
    if ((error = FUNC7(cr, 60 * 1000)) != 0) {
	FUNC4(sc, "error sending BMIC LSTATUS command (%d)\n", error);
	goto out;
    }

    /*
     * Check response.
     */
    FUNC6(cr, &command_status, NULL);
    switch(command_status) {
    case CISS_CMD_STATUS_SUCCESS:		/* buffer right size */
	break;
    case CISS_CMD_STATUS_DATA_UNDERRUN:
    case CISS_CMD_STATUS_DATA_OVERRUN:
	FUNC4(sc, "data over/underrun reading logical drive status\n");
    default:
	FUNC4(sc, "error reading logical drive status (%s)\n",
		    FUNC3(command_status));
	error = EIO;
	goto out;
    }

    /*
     * Set the drive's summary status based on the returned status.
     *
     * XXX testing shows that a failed JBOD drive comes back at next
     * boot in "queued for expansion" mode.  WTF?
     */
    ld->cl_status = FUNC1(ld->cl_lstatus->status);

out:
    if (cr != NULL)
	FUNC5(cr);
    return(error);
}