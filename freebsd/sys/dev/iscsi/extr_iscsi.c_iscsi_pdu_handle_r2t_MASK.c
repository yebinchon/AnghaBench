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
struct iscsi_session {size_t is_max_send_data_segment_length; } ;
struct iscsi_outstanding {scalar_t__ io_datasn; TYPE_1__* io_ccb; } ;
struct iscsi_bhs_r2t {int /*<<< orphan*/  bhsr2t_target_transfer_tag; int /*<<< orphan*/  bhsr2t_initiator_task_tag; int /*<<< orphan*/  bhsr2t_lun; int /*<<< orphan*/  bhsr2t_desired_data_transfer_length; int /*<<< orphan*/  bhsr2t_buffer_offset; } ;
struct iscsi_bhs_data_out {int /*<<< orphan*/  bhsdo_flags; void* bhsdo_buffer_offset; void* bhsdo_datasn; int /*<<< orphan*/  bhsdo_target_transfer_tag; int /*<<< orphan*/  bhsdo_initiator_task_tag; int /*<<< orphan*/  bhsdo_lun; int /*<<< orphan*/  bhsdo_opcode; } ;
struct icl_pdu {scalar_t__ ip_bhs; int /*<<< orphan*/  ip_conn; } ;
struct TYPE_4__ {int flags; } ;
struct ccb_scsiio {size_t dxfer_len; scalar_t__ data_ptr; TYPE_2__ ccb_h; } ;
struct TYPE_3__ {struct ccb_scsiio csio; } ;

/* Variables and functions */
 int /*<<< orphan*/  BHSDO_FLAGS_F ; 
 int CAM_DIR_MASK ; 
 int CAM_DIR_OUT ; 
 int /*<<< orphan*/  ISCSI_BHS_OPCODE_SCSI_DATA_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*,char*,...) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 struct iscsi_session* FUNC1 (struct icl_pdu*) ; 
 void* FUNC2 (size_t) ; 
 int FUNC3 (struct icl_pdu*,scalar_t__,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct icl_pdu*) ; 
 struct icl_pdu* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iscsi_outstanding* FUNC6 (struct iscsi_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC8 (struct iscsi_session*) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct icl_pdu *response)
{
	struct icl_pdu *request;
	struct iscsi_session *is;
	struct iscsi_bhs_r2t *bhsr2t;
	struct iscsi_bhs_data_out *bhsdo;
	struct iscsi_outstanding *io;
	struct ccb_scsiio *csio;
	size_t off, len, total_len;
	int error;

	is = FUNC1(response);

	bhsr2t = (struct iscsi_bhs_r2t *)response->ip_bhs;
	io = FUNC6(is, bhsr2t->bhsr2t_initiator_task_tag);
	if (io == NULL || io->io_ccb == NULL) {
		FUNC0(is, "bad itt 0x%x; reconnecting",
		    bhsr2t->bhsr2t_initiator_task_tag);
		FUNC4(response);
		FUNC8(is);
		return;
	}

	csio = &io->io_ccb->csio;

	if ((csio->ccb_h.flags & CAM_DIR_MASK) != CAM_DIR_OUT) {
		FUNC0(is, "received R2T for read command; reconnecting");
		FUNC4(response);
		FUNC8(is);
		return;
	}

	/*
	 * XXX: Verify R2TSN.
	 */

	io->io_datasn = 0;

	off = FUNC9(bhsr2t->bhsr2t_buffer_offset);
	if (off > csio->dxfer_len) {
		FUNC0(is, "target requested invalid offset "
		    "%zd, buffer is is %d; reconnecting", off, csio->dxfer_len);
		FUNC4(response);
		FUNC8(is);
		return;
	}

	total_len = FUNC9(bhsr2t->bhsr2t_desired_data_transfer_length);
	if (total_len == 0 || total_len > csio->dxfer_len) {
		FUNC0(is, "target requested invalid length "
		    "%zd, buffer is %d; reconnecting", total_len, csio->dxfer_len);
		FUNC4(response);
		FUNC8(is);
		return;
	}

	//ISCSI_SESSION_DEBUG(is, "r2t; off %zd, len %zd", off, total_len);

	for (;;) {
		len = total_len;

		if (len > is->is_max_send_data_segment_length)
			len = is->is_max_send_data_segment_length;

		if (off + len > csio->dxfer_len) {
			FUNC0(is, "target requested invalid "
			    "length/offset %zd, buffer is %d; reconnecting",
			    off + len, csio->dxfer_len);
			FUNC4(response);
			FUNC8(is);
			return;
		}

		request = FUNC5(response->ip_conn, M_NOWAIT);
		if (request == NULL) {
			FUNC4(response);
			FUNC8(is);
			return;
		}

		bhsdo = (struct iscsi_bhs_data_out *)request->ip_bhs;
		bhsdo->bhsdo_opcode = ISCSI_BHS_OPCODE_SCSI_DATA_OUT;
		bhsdo->bhsdo_lun = bhsr2t->bhsr2t_lun;
		bhsdo->bhsdo_initiator_task_tag =
		    bhsr2t->bhsr2t_initiator_task_tag;
		bhsdo->bhsdo_target_transfer_tag =
		    bhsr2t->bhsr2t_target_transfer_tag;
		bhsdo->bhsdo_datasn = FUNC2(io->io_datasn++);
		bhsdo->bhsdo_buffer_offset = FUNC2(off);
		error = FUNC3(request, csio->data_ptr + off, len,
		    M_NOWAIT);
		if (error != 0) {
			FUNC0(is, "failed to allocate memory; "
			    "reconnecting");
			FUNC4(request);
			FUNC4(response);
			FUNC8(is);
			return;
		}

		off += len;
		total_len -= len;

		if (total_len == 0) {
			bhsdo->bhsdo_flags |= BHSDO_FLAGS_F;
			//ISCSI_SESSION_DEBUG(is, "setting F, off %zd", off);
		} else {
			//ISCSI_SESSION_DEBUG(is, "not finished, off %zd", off);
		}

		FUNC7(request);

		if (total_len == 0)
			break;
	}

	FUNC4(response);
}