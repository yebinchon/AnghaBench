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
typedef  union ccb {int dummy; } ccb ;
typedef  int /*<<< orphan*/  u_int8_t ;
struct scsi_inquiry_data {int /*<<< orphan*/  revision; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; } ;
struct mly_softc {scalar_t__ mly_qfrzn_cnt; struct mly_btl** mly_btl; } ;
struct mly_command {int mc_status; int /*<<< orphan*/  mc_resid; int /*<<< orphan*/  mc_sense; int /*<<< orphan*/  mc_packet; scalar_t__ mc_private; struct mly_softc* mc_sc; } ;
struct mly_btl {int mb_flags; int /*<<< orphan*/  mb_state; int /*<<< orphan*/  mb_type; } ;
struct TYPE_6__ {TYPE_1__* entries; } ;
struct TYPE_8__ {int target_id; int flags; int /*<<< orphan*/  status; TYPE_2__ sim_priv; } ;
struct TYPE_7__ {int /*<<< orphan*/ * cdb_bytes; int /*<<< orphan*/ * cdb_ptr; } ;
struct ccb_scsiio {int scsi_status; TYPE_4__ ccb_h; int /*<<< orphan*/  resid; int /*<<< orphan*/  sense_len; int /*<<< orphan*/  sense_data; TYPE_3__ cdb_io; scalar_t__ data_ptr; } ;
struct TYPE_5__ {int field; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_AUTOSNS_VALID ; 
 int CAM_CDB_POINTER ; 
 int /*<<< orphan*/  CAM_RELEASE_SIMQ ; 
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_REQ_CMP_ERR ; 
 int /*<<< orphan*/  CAM_SCSI_BUSY ; 
 int /*<<< orphan*/  CAM_SCSI_STATUS_ERROR ; 
 int /*<<< orphan*/  INQUIRY ; 
 int MLY_BTL_LOGICAL ; 
#define  SCSI_STATUS_BUSY 130 
#define  SCSI_STATUS_CHECK_COND 129 
#define  SCSI_STATUS_OK 128 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mly_command*) ; 
 int /*<<< orphan*/  mly_table_device_state ; 
 int /*<<< orphan*/  mly_table_device_type ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (union ccb*) ; 

__attribute__((used)) static void
FUNC8(struct mly_command *mc)
{
    struct mly_softc		*sc = mc->mc_sc;
    struct ccb_scsiio		*csio = (struct ccb_scsiio *)mc->mc_private;
    struct scsi_inquiry_data	*inq = (struct scsi_inquiry_data *)csio->data_ptr;
    struct mly_btl		*btl;
    u_int8_t			cmd;
    int				bus, target;

    FUNC3(2);

    csio->scsi_status = mc->mc_status;
    switch(mc->mc_status) {
    case SCSI_STATUS_OK:
	/*
	 * In order to report logical device type and status, we overwrite
	 * the result of the INQUIRY command to logical devices.
	 */
	bus = csio->ccb_h.sim_priv.entries[0].field;
	target = csio->ccb_h.target_id;
	/* XXX validate bus/target? */
	if (sc->mly_btl[bus][target].mb_flags & MLY_BTL_LOGICAL) {
	    if (csio->ccb_h.flags & CAM_CDB_POINTER) {
		cmd = *csio->cdb_io.cdb_ptr;
	    } else {
		cmd = csio->cdb_io.cdb_bytes[0];
	    }
	    if (cmd == INQUIRY) {
		btl = &sc->mly_btl[bus][target];
		FUNC6(inq->vendor, FUNC4(mly_table_device_type, btl->mb_type), 8);
		FUNC6(inq->product, FUNC4(mly_table_device_state, btl->mb_state), 16);
		FUNC6(inq->revision, "", 4);
	    }
	}

	FUNC2(2, "SCSI_STATUS_OK");
	csio->ccb_h.status = CAM_REQ_CMP;
	break;

    case SCSI_STATUS_CHECK_COND:
	FUNC2(1, "SCSI_STATUS_CHECK_COND  sense %d  resid %d", mc->mc_sense, mc->mc_resid);
	csio->ccb_h.status = CAM_SCSI_STATUS_ERROR;
	FUNC1(&csio->sense_data, SSD_FULL_SIZE);
	FUNC0(mc->mc_packet, &csio->sense_data, mc->mc_sense);
	csio->sense_len = mc->mc_sense;
	csio->ccb_h.status |= CAM_AUTOSNS_VALID;
	csio->resid = mc->mc_resid;	/* XXX this is a signed value... */
	break;

    case SCSI_STATUS_BUSY:
	FUNC2(1, "SCSI_STATUS_BUSY");
	csio->ccb_h.status = CAM_SCSI_BUSY;
	break;

    default:
	FUNC2(1, "unknown status 0x%x", csio->scsi_status);
	csio->ccb_h.status = CAM_REQ_CMP_ERR;
	break;
    }

    if (sc->mly_qfrzn_cnt) {
	csio->ccb_h.status |= CAM_RELEASE_SIMQ;
	sc->mly_qfrzn_cnt--;
    }

    FUNC7((union ccb *)csio);
    FUNC5(mc);
}