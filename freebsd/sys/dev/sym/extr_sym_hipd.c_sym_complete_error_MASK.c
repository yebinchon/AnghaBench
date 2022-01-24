#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int u_char ;
struct ccb_scsiio {int sense_resid; int resid; scalar_t__ scsi_status; int sense_len; scalar_t__ sense_data; } ;
typedef  TYPE_2__* hcb_p ;
typedef  TYPE_3__* ccb_p ;
struct TYPE_16__ {scalar_t__ host_status; scalar_t__ ssss_status; int host_flags; scalar_t__ xerr_status; int sv_resid; scalar_t__ sv_scsi_status; scalar_t__ sv_xerr_status; scalar_t__ dmamapped; int /*<<< orphan*/  link_ccbq; int /*<<< orphan*/  dmamap; int /*<<< orphan*/  lun; int /*<<< orphan*/  target; int /*<<< orphan*/  sns_bbuf; TYPE_1__* cam_ccb; } ;
struct TYPE_15__ {int squeue_ba; int /*<<< orphan*/  comp_ccbq; int /*<<< orphan*/  data_dmat; } ;
struct TYPE_14__ {struct ccb_scsiio csio; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  CAM_AUTOSENSE_FAIL ; 
 int /*<<< orphan*/  CAM_AUTOSNS_VALID ; 
 int /*<<< orphan*/  CAM_REQ_ABORTED ; 
 int /*<<< orphan*/  CAM_REQ_CMP_ERR ; 
 int /*<<< orphan*/  CAM_SCSI_STATUS_ERROR ; 
 int /*<<< orphan*/  CAM_SEL_TIMEOUT ; 
 int /*<<< orphan*/  CAM_UNEXP_BUSFREE ; 
 int DEBUG_FLAGS ; 
 int DEBUG_RESULT ; 
 int DEBUG_TINY ; 
 int HF_SENSE ; 
 scalar_t__ HS_COMPLETE ; 
 scalar_t__ HS_COMP_ERR ; 
 scalar_t__ HS_SEL_TIMEOUT ; 
 scalar_t__ HS_UNEXPECTED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYM_CONF_RESIDUAL_SUPPORT ; 
 scalar_t__ SYM_DMA_READ ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int SYM_SNS_BBUF_LEN ; 
 scalar_t__ S_GOOD ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int) ; 
 int /*<<< orphan*/  nc_scratcha ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  start ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (union ccb*,int /*<<< orphan*/ ) ; 
 scalar_t__ sym_verbose ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC20 (hcb_p np, ccb_p cp)
{
	struct ccb_scsiio *csio;
	u_int cam_status;
	int i, sense_returned;

	FUNC6(MA_OWNED);

	/*
	 *  Paranoid check. :)
	 */
	if (!cp || !cp->cam_ccb)
		return;

	if (DEBUG_FLAGS & (DEBUG_TINY|DEBUG_RESULT)) {
		FUNC10 ("CCB=%lx STAT=%x/%x/%x DEV=%d/%d\n", (unsigned long)cp,
			cp->host_status, cp->ssss_status, cp->host_flags,
			cp->target, cp->lun);
		FUNC1(100);
	}

	/*
	 *  Get CAM command pointer.
	 */
	csio = &cp->cam_ccb->csio;

	/*
	 *  Check for extended errors.
	 */
	if (cp->xerr_status) {
		if (sym_verbose)
			FUNC16(cp, cp->xerr_status);
		if (cp->host_status == HS_COMPLETE)
			cp->host_status = HS_COMP_ERR;
	}

	/*
	 *  Calculate the residual.
	 */
	csio->sense_resid = 0;
	csio->resid = FUNC12(np, cp);

	if (!SYM_CONF_RESIDUAL_SUPPORT) {/* If user does not want residuals */
		csio->resid  = 0;	/* throw them away. :)		   */
		cp->sv_resid = 0;
	}

	if (cp->host_flags & HF_SENSE) {		/* Auto sense     */
		csio->scsi_status = cp->sv_scsi_status;	/* Restore status */
		csio->sense_resid = csio->resid;	/* Swap residuals */
		csio->resid       = cp->sv_resid;
		cp->sv_resid	  = 0;
		if (sym_verbose && cp->sv_xerr_status)
			FUNC16(cp, cp->sv_xerr_status);
		if (cp->host_status == HS_COMPLETE &&
		    cp->ssss_status == S_GOOD &&
		    cp->xerr_status == 0) {
			cam_status = FUNC19(CAM_SCSI_STATUS_ERROR,
							 cp->sv_xerr_status);
			cam_status |= CAM_AUTOSNS_VALID;
			/*
			 *  Bounce back the sense data to user and
			 *  fix the residual.
			 */
			FUNC9(&csio->sense_data, sizeof(csio->sense_data));
			sense_returned = SYM_SNS_BBUF_LEN - csio->sense_resid;
			if (sense_returned < csio->sense_len)
				csio->sense_resid = csio->sense_len -
				    sense_returned;
			else
				csio->sense_resid = 0;
			FUNC7(cp->sns_bbuf, &csio->sense_data,
			    FUNC2(csio->sense_len, sense_returned));
#if 0
			/*
			 *  If the device reports a UNIT ATTENTION condition
			 *  due to a RESET condition, we should consider all
			 *  disconnect CCBs for this unit as aborted.
			 */
			if (1) {
				u_char *p;
				p  = (u_char *) csio->sense_data;
				if (p[0]==0x70 && p[2]==0x6 && p[12]==0x29)
					sym_clear_tasks(np, CAM_REQ_ABORTED,
							cp->target,cp->lun, -1);
			}
#endif
		}
		else
			cam_status = CAM_AUTOSENSE_FAIL;
	}
	else if (cp->host_status == HS_COMPLETE) {	/* Bad SCSI status */
		csio->scsi_status = cp->ssss_status;
		cam_status = CAM_SCSI_STATUS_ERROR;
	}
	else if (cp->host_status == HS_SEL_TIMEOUT)	/* Selection timeout */
		cam_status = CAM_SEL_TIMEOUT;
	else if (cp->host_status == HS_UNEXPECTED)	/* Unexpected BUS FREE*/
		cam_status = CAM_UNEXP_BUSFREE;
	else {						/* Extended error */
		if (sym_verbose) {
			FUNC4(cp);
			FUNC10 ("COMMAND FAILED (%x %x %x).\n",
				cp->host_status, cp->ssss_status,
				cp->xerr_status);
		}
		csio->scsi_status = cp->ssss_status;
		/*
		 *  Set the most appropriate value for CAM status.
		 */
		cam_status = FUNC19(CAM_REQ_CMP_ERR,
						 cp->xerr_status);
	}

	/*
	 *  Dequeue all queued CCBs for that device
	 *  not yet started by SCRIPTS.
	 */
	i = (FUNC0 (nc_scratcha) - np->squeue_ba) / 4;
	(void) FUNC13(np, i, cp->target, cp->lun, -1);

	/*
	 *  Restart the SCRIPTS processor.
	 */
	FUNC3 (FUNC5 (np, start));

	/*
	 *  Synchronize DMA map if needed.
	 */
	if (cp->dmamapped) {
		FUNC8(np->data_dmat, cp->dmamap,
			(cp->dmamapped == SYM_DMA_READ ?
				BUS_DMASYNC_POSTREAD : BUS_DMASYNC_POSTWRITE));
	}
	/*
	 *  Add this one to the COMP queue.
	 *  Complete all those commands with either error
	 *  or requeue condition.
	 */
	FUNC18((union ccb *) csio, cam_status);
	FUNC17(&cp->link_ccbq);
	FUNC15(&cp->link_ccbq, &np->comp_ccbq);
	FUNC14(np, 0);
}