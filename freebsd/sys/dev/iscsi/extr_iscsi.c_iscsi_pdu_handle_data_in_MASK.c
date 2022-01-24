#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int status; int /*<<< orphan*/  path; } ;
struct TYPE_4__ {int flags; } ;
struct ccb_scsiio {size_t dxfer_len; scalar_t__ scsi_status; size_t resid; TYPE_2__ ccb_h; scalar_t__ data_ptr; } ;
union ccb {TYPE_1__ ccb_h; struct ccb_scsiio csio; } ;
struct iscsi_session {int dummy; } ;
struct iscsi_outstanding {size_t io_received; union ccb* io_ccb; } ;
struct iscsi_bhs_data_in {int bhsdi_flags; scalar_t__ bhsdi_status; int /*<<< orphan*/  bhsdi_residual_count; int /*<<< orphan*/  bhsdi_buffer_offset; int /*<<< orphan*/  bhsdi_initiator_task_tag; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;

/* Variables and functions */
 int BHSDI_FLAGS_S ; 
 int CAM_DEV_QFRZN ; 
 int CAM_DIR_IN ; 
 int CAM_DIR_MASK ; 
 int CAM_REQ_CMP ; 
 int CAM_SCSI_STATUS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_session*,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 struct iscsi_session* FUNC4 (struct icl_pdu*) ; 
 size_t FUNC5 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC6 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC7 (struct icl_pdu*,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 struct iscsi_outstanding* FUNC8 (struct iscsi_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iscsi_session*,struct iscsi_outstanding*) ; 
 int /*<<< orphan*/  FUNC10 (struct iscsi_session*) ; 
 size_t FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (union ccb*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC14(struct icl_pdu *response)
{
	struct iscsi_bhs_data_in *bhsdi;
	struct iscsi_outstanding *io;
	struct iscsi_session *is;
	union ccb *ccb;
	struct ccb_scsiio *csio;
	size_t data_segment_len, received, oreceived;
	
	is = FUNC4(response);
	bhsdi = (struct iscsi_bhs_data_in *)response->ip_bhs;
	io = FUNC8(is, bhsdi->bhsdi_initiator_task_tag);
	if (io == NULL || io->io_ccb == NULL) {
		FUNC2(is, "bad itt 0x%x", bhsdi->bhsdi_initiator_task_tag);
		FUNC6(response);
		FUNC10(is);
		FUNC1(is);
		return;
	}

	data_segment_len = FUNC5(response);
	if (data_segment_len == 0) {
		/*
		 * "The sending of 0 length data segments should be avoided,
		 * but initiators and targets MUST be able to properly receive
		 * 0 length data segments."
		 */
		FUNC1(is);
		FUNC6(response);
		return;
	}

	/*
	 * We need to track this for security reasons - without it, malicious target
	 * could respond to SCSI READ without sending Data-In PDUs, which would result
	 * in read operation on the initiator side returning random kernel data.
	 */
	if (FUNC11(bhsdi->bhsdi_buffer_offset) != io->io_received) {
		FUNC2(is, "data out of order; expected offset %zd, got %zd",
		    io->io_received, (size_t)FUNC11(bhsdi->bhsdi_buffer_offset));
		FUNC6(response);
		FUNC10(is);
		FUNC1(is);
		return;
	}

	ccb = io->io_ccb;
	csio = &ccb->csio;

	if (io->io_received + data_segment_len > csio->dxfer_len) {
		FUNC2(is, "oversize data segment (%zd bytes "
		    "at offset %zd, buffer is %d)",
		    data_segment_len, io->io_received, csio->dxfer_len);
		FUNC6(response);
		FUNC10(is);
		FUNC1(is);
		return;
	}

	oreceived = io->io_received;
	io->io_received += data_segment_len;
	received = io->io_received;
	if ((bhsdi->bhsdi_flags & BHSDI_FLAGS_S) != 0)
		FUNC9(is, io);
	FUNC1(is);

	FUNC7(response, 0, csio->data_ptr + oreceived, data_segment_len);

	/*
	 * XXX: Check DataSN.
	 * XXX: Check F.
	 */
	if ((bhsdi->bhsdi_flags & BHSDI_FLAGS_S) == 0) {
		/*
		 * Nothing more to do.
		 */
		FUNC6(response);
		return;
	}

	//ISCSI_SESSION_DEBUG(is, "got S flag; status 0x%x", bhsdi->bhsdi_status);
	if (bhsdi->bhsdi_status == 0) {
		ccb->ccb_h.status = CAM_REQ_CMP;
	} else {
		if ((ccb->ccb_h.status & CAM_DEV_QFRZN) == 0) {
			FUNC13(ccb->ccb_h.path, 1);
			FUNC0(is, "freezing devq");
		}
		ccb->ccb_h.status = CAM_SCSI_STATUS_ERROR | CAM_DEV_QFRZN;
		csio->scsi_status = bhsdi->bhsdi_status;
	}

	if ((csio->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN) {
		FUNC3(received <= csio->dxfer_len,
		    ("received > csio->dxfer_len"));
		if (received < csio->dxfer_len) {
			csio->resid = FUNC11(bhsdi->bhsdi_residual_count);
			if (csio->resid != csio->dxfer_len - received) {
				FUNC2(is, "underflow mismatch: "
				    "target indicates %d, we calculated %zd",
				    csio->resid, csio->dxfer_len - received);
			}
			csio->resid = csio->dxfer_len - received;
		}
	}

	FUNC12(ccb);
	FUNC6(response);
}