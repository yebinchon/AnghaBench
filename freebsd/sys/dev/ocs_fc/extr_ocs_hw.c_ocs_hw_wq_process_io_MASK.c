#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_9__ ;
typedef  struct TYPE_37__   TYPE_8__ ;
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;
typedef  struct TYPE_29__   TYPE_13__ ;
typedef  struct TYPE_28__   TYPE_12__ ;
typedef  struct TYPE_27__   TYPE_10__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  void* uint32_t ;
struct TYPE_37__ {int qx; scalar_t__ xb; } ;
typedef  TYPE_8__ sli4_fc_wcqe_t ;
typedef  int /*<<< orphan*/  prop_buf ;
struct TYPE_34__ {int /*<<< orphan*/  unsolicited; } ;
struct TYPE_33__ {int /*<<< orphan*/  (* unsolicited ) (int /*<<< orphan*/ ,TYPE_13__*) ;int /*<<< orphan*/  (* bounce ) (int /*<<< orphan*/ ,TYPE_13__*,void*,void*,void*) ;} ;
struct TYPE_30__ {scalar_t__ bounce; scalar_t__ i_only_aab; } ;
struct TYPE_36__ {int /*<<< orphan*/  retain_tsend_io_length; } ;
struct TYPE_38__ {TYPE_5__ args; TYPE_4__ callback; TYPE_1__ config; int /*<<< orphan*/  os; int /*<<< orphan*/  sli; TYPE_7__ workaround; } ;
typedef  TYPE_9__ ocs_hw_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;
struct TYPE_27__ {int quarantine; int type; int status_saved; int /*<<< orphan*/  axr_lock; TYPE_6__* axr_buf; int /*<<< orphan*/  rnode; void* saved_ext; void* saved_len; void* saved_status; int /*<<< orphan*/  (* done ) (TYPE_10__*,int /*<<< orphan*/ ,void*,void*,void*,void*) ;void* arg; struct TYPE_27__* sec_hio; int /*<<< orphan*/  reqtag; int /*<<< orphan*/  indicator; int /*<<< orphan*/  is_port_owned; void* length; void* xbusy; int /*<<< orphan*/  wq; void* quarantine_first_phase; TYPE_9__* hw; } ;
typedef  TYPE_10__ ocs_hw_io_t ;
typedef  int /*<<< orphan*/  (* ocs_hw_done_t ) (TYPE_10__*,int /*<<< orphan*/ ,void*,void*,void*,void*) ;
typedef  void* int32_t ;
struct TYPE_28__ {int /*<<< orphan*/  ox_id; int /*<<< orphan*/  d_id; int /*<<< orphan*/  s_id; } ;
typedef  TYPE_12__ fc_header_t ;
struct TYPE_29__ {TYPE_3__* header; } ;
struct TYPE_35__ {TYPE_13__ seq; TYPE_13__* cmd_seq; int /*<<< orphan*/  call_axr_data; int /*<<< orphan*/  call_axr_cmd; } ;
struct TYPE_31__ {TYPE_12__* virt; } ;
struct TYPE_32__ {TYPE_2__ dma; } ;

/* Variables and functions */
 void* FALSE ; 
#define  OCS_HW_BLS_ACC 141 
#define  OCS_HW_BLS_ACC_SID 140 
#define  OCS_HW_ELS_REQ 139 
#define  OCS_HW_ELS_RSP 138 
#define  OCS_HW_ELS_RSP_SID 137 
#define  OCS_HW_FC_CT 136 
#define  OCS_HW_FC_CT_RSP 135 
#define  OCS_HW_IO_DNRX_REQUEUE 134 
#define  OCS_HW_IO_INITIATOR_NODATA 133 
#define  OCS_HW_IO_INITIATOR_READ 132 
#define  OCS_HW_IO_INITIATOR_WRITE 131 
#define  OCS_HW_IO_TARGET_READ 130 
#define  OCS_HW_IO_TARGET_RSP 129 
#define  OCS_HW_IO_TARGET_WRITE 128 
 scalar_t__ OCS_HW_RTN_IO_ABORT_IN_PROGRESS ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 void* TRUE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 (TYPE_9__*,TYPE_10__*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*,int /*<<< orphan*/ ,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*,TYPE_10__*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*,TYPE_10__*) ; 
 int /*<<< orphan*/  ocs_hw_unsol_process_bounce ; 
 scalar_t__ FUNC9 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,...) ; 
 void* FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int*,void**) ; 
 void* FUNC17 (int /*<<< orphan*/ *,int*) ; 
 void* FUNC18 (int /*<<< orphan*/ *,int*) ; 
 void* FUNC19 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,TYPE_13__*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,TYPE_13__*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,TYPE_13__*) ; 

__attribute__((used)) static void
FUNC24(void *arg, uint8_t *cqe, int32_t status)
{
	ocs_hw_io_t *io = arg;
	ocs_hw_t *hw = io->hw;
	sli4_fc_wcqe_t *wcqe = (void *)cqe;
	uint32_t	len = 0;
	uint32_t ext = 0;
	uint8_t out_of_order_axr_cmd = 0;
	uint8_t out_of_order_axr_data = 0;
	uint8_t lock_taken = 0;
#if defined(OCS_DISC_SPIN_DELAY)
	uint32_t delay = 0;
	char prop_buf[32];
#endif

	/*
	 * For the primary IO, this will also be used for the
	 * response. So it is important to only set/clear this
	 * flag on the first data phase of the IO because
	 * subsequent phases will be done on the secondary XRI.
	 */
	if (io->quarantine && io->quarantine_first_phase) {
		io->quarantine = (wcqe->qx == 1);
		FUNC5(hw, io->wq, io);
	}
	io->quarantine_first_phase = FALSE;

	/* BZ 161832 - free secondary HW IO */
	if (io->sec_hio != NULL &&
	    io->sec_hio->quarantine) {
		/*
		 * If the quarantine flag is set on the
		 * IO, then set it on the secondary IO
		 * based on the quarantine XRI (QX) bit
		 * sent by the FW.
		 */
		io->sec_hio->quarantine = (wcqe->qx == 1);
		/* use the primary io->wq because it is not set on the secondary IO. */
		FUNC5(hw, io->wq, io->sec_hio);
	}

	FUNC8(hw, io);

	/* clear xbusy flag if WCQE[XB] is clear */
	if (io->xbusy && wcqe->xb == 0) {
		io->xbusy = FALSE;
	}

	/* get extended CQE status */
	switch (io->type) {
	case OCS_HW_BLS_ACC:
	case OCS_HW_BLS_ACC_SID:
		break;
	case OCS_HW_ELS_REQ:
		FUNC16(&hw->sli, cqe, &ext);
		len = FUNC19(&hw->sli, cqe);
		break;
	case OCS_HW_ELS_RSP:
	case OCS_HW_ELS_RSP_SID:
	case OCS_HW_FC_CT_RSP:
		break;
	case OCS_HW_FC_CT:
		len = FUNC19(&hw->sli, cqe);
		break;
	case OCS_HW_IO_TARGET_WRITE:
		len = FUNC18(&hw->sli, cqe);
#if defined(OCS_DISC_SPIN_DELAY)
		if (ocs_get_property("disk_spin_delay", prop_buf, sizeof(prop_buf)) == 0) {
			delay = ocs_strtoul(prop_buf, 0, 0);
			ocs_udelay(delay);
		}
#endif
		break;
	case OCS_HW_IO_TARGET_READ:
		len = FUNC18(&hw->sli, cqe);
		/*
		 * if_type == 2 seems to return 0 "total length placed" on
		 * FCP_TSEND64_WQE completions. If this appears to happen,
		 * use the CTIO data transfer length instead.
		 */
		if (hw->workaround.retain_tsend_io_length && !len && !status) {
			len = io->length;
		}

		break;
	case OCS_HW_IO_TARGET_RSP:
		if(io->is_port_owned) {
			FUNC10(&io->axr_lock);
			lock_taken = 1;
			if(io->axr_buf->call_axr_cmd) {
				out_of_order_axr_cmd = 1;
			}
			if(io->axr_buf->call_axr_data) {
				out_of_order_axr_data = 1;
			}
		}
		break;
	case OCS_HW_IO_INITIATOR_READ:
		len = FUNC18(&hw->sli, cqe);
		break;
	case OCS_HW_IO_INITIATOR_WRITE:
		len = FUNC18(&hw->sli, cqe);
		break;
	case OCS_HW_IO_INITIATOR_NODATA:
		break;
	case OCS_HW_IO_DNRX_REQUEUE:
		/* release the count for re-posting the buffer */
		//ocs_hw_io_free(hw, io);
		break;
	default:
		FUNC12(hw->os, "XXX unhandled io type %#x for XRI 0x%x\n",
			     io->type, io->indicator);
		break;
	}
	if (status) {
		ext = FUNC17(&hw->sli, cqe);
		/* Emulate IAAB=0 for initiator WQEs only; i.e. automatically
		 * abort exchange if an error occurred and exchange is still busy.
		 */
		if (hw->config.i_only_aab &&
		    (FUNC7(io->type)) &&
		    (FUNC9(status, ext, wcqe->xb))) {
			ocs_hw_rtn_e rc;

			FUNC11(hw->os, "aborting xri=%#x tag=%#x\n",
				      io->indicator, io->reqtag);
			/*
			 * Because the initiator will not issue another IO phase, then it is OK to to issue the
			 * callback on the abort completion, but for consistency with the target, wait for the
			 * XRI_ABORTED CQE to issue the IO callback.
			 */
			rc = FUNC3(hw, io, TRUE, NULL, NULL);

			if (rc == OCS_HW_RTN_SUCCESS) {
				/* latch status to return after abort is complete */
				io->status_saved = 1;
				io->saved_status = status;
				io->saved_ext = ext;
				io->saved_len = len;
				goto exit_ocs_hw_wq_process_io;
			} else if (rc == OCS_HW_RTN_IO_ABORT_IN_PROGRESS) {
				/*
				 * Already being aborted by someone else (ABTS
				 * perhaps). Just fall through and return original
				 * error.
				 */
				FUNC11(hw->os, "abort in progress xri=%#x tag=%#x\n",
					      io->indicator, io->reqtag);

			} else {
				/* Failed to abort for some other reason, log error */
				FUNC12(hw->os, "Failed to abort xri=%#x tag=%#x rc=%d\n",
					     io->indicator, io->reqtag, rc);
			}
		}

		/*
		 * If we're not an originator IO, and XB is set, then issue abort for the IO from within the HW
		 */
		if ( (! FUNC7(io->type)) && wcqe->xb) {
			ocs_hw_rtn_e rc;

			FUNC11(hw->os, "aborting xri=%#x tag=%#x\n", io->indicator, io->reqtag);

			/*
			 * Because targets may send a response when the IO completes using the same XRI, we must
			 * wait for the XRI_ABORTED CQE to issue the IO callback
			 */
			rc = FUNC3(hw, io, FALSE, NULL, NULL);
			if (rc == OCS_HW_RTN_SUCCESS) {
				/* latch status to return after abort is complete */
				io->status_saved = 1;
				io->saved_status = status;
				io->saved_ext = ext;
				io->saved_len = len;
				goto exit_ocs_hw_wq_process_io;
			} else if (rc == OCS_HW_RTN_IO_ABORT_IN_PROGRESS) {
				/*
				 * Already being aborted by someone else (ABTS
				 * perhaps). Just fall through and return original
				 * error.
				 */
				FUNC11(hw->os, "abort in progress xri=%#x tag=%#x\n",
					      io->indicator, io->reqtag);

			} else {
				/* Failed to abort for some other reason, log error */
				FUNC12(hw->os, "Failed to abort xri=%#x tag=%#x rc=%d\n",
					     io->indicator, io->reqtag, rc);
			}
		}
	}
	/* BZ 161832 - free secondary HW IO */
	if (io->sec_hio != NULL) {
		FUNC4(hw, io->sec_hio);
		io->sec_hio = NULL;
	}

	if (io->done != NULL) {
		ocs_hw_done_t  done = io->done;
		void		*arg = io->arg;

		io->done = NULL;

		if (io->status_saved) {
			/* use latched status if exists */
			status = io->saved_status;
			len = io->saved_len;
			ext = io->saved_ext;
			io->status_saved = 0;
		}

		/* Restore default SGL */
		FUNC6(hw, io);
		done(io, io->rnode, len, status, ext, arg);
	}

	if(out_of_order_axr_cmd) {
		/* bounce enabled, single RQ, we snoop the ox_id to choose the cpuidx */
		if (hw->config.bounce) {
			fc_header_t *hdr = io->axr_buf->cmd_seq->header->dma.virt;
			uint32_t s_id = FUNC0(hdr->s_id);
			uint32_t d_id = FUNC0(hdr->d_id);
			uint32_t ox_id =  FUNC1(hdr->ox_id);
			if (hw->callback.bounce != NULL) {
				(*hw->callback.bounce)(ocs_hw_unsol_process_bounce, io->axr_buf->cmd_seq, s_id, d_id, ox_id);
			}
		}else {
			hw->callback.unsolicited(hw->args.unsolicited, io->axr_buf->cmd_seq);
		}

		if(out_of_order_axr_data) {
			/* bounce enabled, single RQ, we snoop the ox_id to choose the cpuidx */
			if (hw->config.bounce) {
				fc_header_t *hdr = io->axr_buf->seq.header->dma.virt;
				uint32_t s_id = FUNC0(hdr->s_id);
				uint32_t d_id = FUNC0(hdr->d_id);
				uint32_t ox_id =  FUNC1(hdr->ox_id);
				if (hw->callback.bounce != NULL) {
					(*hw->callback.bounce)(ocs_hw_unsol_process_bounce, &io->axr_buf->seq, s_id, d_id, ox_id);
				}
			}else {
				hw->callback.unsolicited(hw->args.unsolicited, &io->axr_buf->seq);
			}
		}
	}

exit_ocs_hw_wq_process_io:
	if(lock_taken) {
		FUNC15(&io->axr_lock);
	}	
}