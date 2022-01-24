#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ciss_softc {int dummy; } ;
struct ciss_request {struct ciss_softc* cr_sc; struct ciss_command* cr_cc; } ;
struct TYPE_5__ {int /*<<< orphan*/  lun; } ;
struct TYPE_6__ {TYPE_1__ logical; } ;
struct ciss_ldrive {int /*<<< orphan*/ * cl_controller; TYPE_2__ cl_address; } ;
struct TYPE_8__ {int /*<<< orphan*/ * cdb; } ;
struct TYPE_7__ {int /*<<< orphan*/  address; } ;
struct ciss_command {TYPE_4__ cdb; TYPE_3__ header; } ;
struct ciss_bmic_cdb {int log_drive; } ;

/* Variables and functions */
 int /*<<< orphan*/  CISS_BMIC_ACCEPT_MEDIA ; 
#define  CISS_CMD_STATUS_SUCCESS 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ciss_softc*,struct ciss_request**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ciss_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ciss_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct ciss_request*,int*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ciss_request*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC8(struct ciss_softc *sc, struct ciss_ldrive *ld)
{
    struct ciss_request		*cr;
    struct ciss_command		*cc;
    struct ciss_bmic_cdb	*cbc;
    int				command_status;
    int				error = 0, ldrive;

    ldrive = FUNC0(ld->cl_address.logical.lun);

    FUNC7(0, "bringing logical drive %d back online", ldrive);

    /*
     * Build a CISS BMIC command to bring the drive back online.
     */
    if ((error = FUNC1(sc, &cr, CISS_BMIC_ACCEPT_MEDIA,
				       NULL, 0)) != 0)
	goto out;
    cc = cr->cr_cc;
    cc->header.address = *ld->cl_controller;	/* target controller */
    cbc = (struct ciss_bmic_cdb *)&(cc->cdb.cdb[0]);
    cbc->log_drive = ldrive;

    /*
     * Submit the request and wait for it to complete.
     */
    if ((error = FUNC6(cr, 60 * 1000)) != 0) {
	FUNC3(sc, "error sending BMIC ACCEPT MEDIA command (%d)\n", error);
	goto out;
    }

    /*
     * Check response.
     */
    FUNC5(cr, &command_status, NULL);
    switch(command_status) {
    case CISS_CMD_STATUS_SUCCESS:		/* all OK */
	/* we should get a logical drive status changed event here */
	break;
    default:
	FUNC3(cr->cr_sc, "error accepting media into failed logical drive (%s)\n",
		    FUNC2(command_status));
	break;
    }

out:
    if (cr != NULL)
	FUNC4(cr);
    return(error);
}