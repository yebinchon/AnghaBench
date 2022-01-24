#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ccb_hdr {int func_code; int flags; void* status; } ;
struct ccb_trans_settings_spi {int sync_period; int sync_offset; int valid; int /*<<< orphan*/  bus_width; int /*<<< orphan*/  flags; } ;
struct TYPE_12__ {struct ccb_trans_settings_spi spi; } ;
struct ccb_trans_settings_scsi {int /*<<< orphan*/  valid; } ;
struct TYPE_11__ {struct ccb_trans_settings_scsi scsi; } ;
struct ccb_trans_settings {int transport_version; int /*<<< orphan*/  type; void* transport; void* protocol_version; void* protocol; TYPE_6__ xport_specific; TYPE_5__ proto_specific; } ;
struct TYPE_10__ {void* status; } ;
struct ccb_pathinq {int version_num; int hba_inquiry; int hba_misc; int initiator_id; int base_transfer_speed; int transport_version; TYPE_4__ ccb_h; void* protocol_version; void* protocol; void* transport; void* bus_id; int /*<<< orphan*/  unit_number; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  hba_vid; int /*<<< orphan*/  sim_vid; int /*<<< orphan*/  max_lun; int /*<<< orphan*/  max_target; int /*<<< orphan*/  hba_eng_cnt; int /*<<< orphan*/  target_sprt; } ;
struct TYPE_8__ {TYPE_1__* entries; } ;
struct TYPE_9__ {TYPE_2__ sim_priv; int /*<<< orphan*/  target_lun; } ;
struct ccb_scsiio {TYPE_3__ ccb_h; int /*<<< orphan*/  cdb_len; } ;
union ccb {struct ccb_hdr ccb_h; struct ccb_trans_settings cts; struct ccb_pathinq cpi; int /*<<< orphan*/  ccg; struct ccb_scsiio csio; } ;
struct cam_sim {int dummy; } ;
struct amr_softc {int /*<<< orphan*/  amr_list_lock; int /*<<< orphan*/  support_ext_cdb; } ;
struct TYPE_7__ {void* field; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMR_MAX_CDB_LEN ; 
 int /*<<< orphan*/  AMR_MAX_EXTCDB_LEN ; 
 int /*<<< orphan*/  AMR_MAX_TARGETS ; 
 int CAM_CDB_PHYS ; 
 int CAM_CDB_POINTER ; 
 int CAM_DATA_MASK ; 
 int CAM_DATA_VADDR ; 
 void* CAM_DEV_NOT_THERE ; 
 int CAM_DIR_MASK ; 
 int CAM_DIR_NONE ; 
 void* CAM_FUNC_NOTAVAIL ; 
 void* CAM_REQ_CMP ; 
 void* CAM_REQ_INPROG ; 
 void* CAM_REQ_INVALID ; 
 int /*<<< orphan*/  CTS_SCSI_VALID_TQ ; 
 int /*<<< orphan*/  CTS_SPI_FLAGS_DISC_ENB ; 
 int CTS_SPI_VALID_BUS_WIDTH ; 
 int CTS_SPI_VALID_DISC ; 
 int CTS_SPI_VALID_SYNC_OFFSET ; 
 int CTS_SPI_VALID_SYNC_RATE ; 
 int /*<<< orphan*/  CTS_TYPE_USER_SETTINGS ; 
 int /*<<< orphan*/  DEV_IDLEN ; 
 int /*<<< orphan*/  HBA_IDLEN ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  MSG_EXT_WDTR_BUS_32_BIT ; 
 int PIM_NOBUSRESET ; 
 int PIM_SEQSCAN ; 
 int PI_SDTR_ABLE ; 
 int PI_TAG_ABLE ; 
 int PI_WIDE_16 ; 
 void* PROTO_SCSI ; 
 void* SCSI_REV_2 ; 
 int /*<<< orphan*/  SIM_IDLEN ; 
 void* XPORT_SPI ; 
#define  XPT_CALC_GEOMETRY 134 
#define  XPT_GET_TRAN_SETTINGS 133 
#define  XPT_PATH_INQ 132 
#define  XPT_RESET_BUS 131 
#define  XPT_RESET_DEV 130 
#define  XPT_SCSI_IO 129 
#define  XPT_SET_TRAN_SETTINGS 128 
 int /*<<< orphan*/  FUNC0 (struct amr_softc*,union ccb*) ; 
 int /*<<< orphan*/  FUNC1 (struct amr_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (struct cam_sim*) ; 
 char* FUNC4 (struct cam_sim*) ; 
 struct amr_softc* FUNC5 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (union ccb*) ; 

__attribute__((used)) static void
FUNC11(struct cam_sim *sim, union ccb *ccb)
{
	struct amr_softc	*sc = FUNC5(sim);

	switch(ccb->ccb_h.func_code) {

	/*
	 * Perform SCSI I/O to a physical device.
	 */
	case XPT_SCSI_IO:
	{
		struct ccb_hdr		*ccbh = &ccb->ccb_h;
		struct ccb_scsiio	*csio = &ccb->csio;

		/* Validate the CCB */
		ccbh->status = CAM_REQ_INPROG;

		/* check the CDB length */
		if (csio->cdb_len > AMR_MAX_EXTCDB_LEN)
			ccbh->status = CAM_REQ_INVALID;

		if ((csio->cdb_len > AMR_MAX_CDB_LEN) &&
		    (sc->support_ext_cdb == 0))
			ccbh->status = CAM_REQ_INVALID;
	
		/* check that the CDB pointer is not to a physical address */
		if ((ccbh->flags & CAM_CDB_POINTER) &&
		    (ccbh->flags & CAM_CDB_PHYS))
			ccbh->status = CAM_REQ_INVALID;
		/*
		 * if there is data transfer, it must be to/from a virtual
		 * address
		 */
		if ((ccbh->flags & CAM_DIR_MASK) != CAM_DIR_NONE) {
			if ((ccbh->flags & CAM_DATA_MASK) != CAM_DATA_VADDR)
				/* we can't map it */
				ccbh->status = CAM_REQ_INVALID;
		}
	
		/*
		 * If the command is to a LUN other than 0, fail it.
		 * This is probably incorrect, but during testing the
		 * firmware did not seem to respect the LUN field, and thus
		 * devices appear echoed.
		 */
		if (csio->ccb_h.target_lun != 0)
			ccbh->status = CAM_DEV_NOT_THERE;

		/* if we're happy with the request, queue it for attention */
		if (ccbh->status == CAM_REQ_INPROG) {

			/* save the channel number in the ccb */
			csio->ccb_h.sim_priv.entries[0].field= FUNC3(sim);

			FUNC0(sc, ccb);
			FUNC1(sc);
			return;
		}
		break;
	}

	case XPT_CALC_GEOMETRY:
	{
		FUNC2(&ccb->ccg, /*extended*/1);
		break;
	}

	/*
	 * Return path stats.  Some of these should probably be amended.
	 */
	case XPT_PATH_INQ:
	{
		struct ccb_pathinq	  *cpi = & ccb->cpi;

		FUNC7(3, "XPT_PATH_INQ");
		cpi->version_num = 1;		   /* XXX??? */
		cpi->hba_inquiry = PI_SDTR_ABLE|PI_TAG_ABLE|PI_WIDE_16;
		cpi->target_sprt = 0;
		cpi->hba_misc = PIM_NOBUSRESET|PIM_SEQSCAN;
		cpi->hba_eng_cnt = 0;
		cpi->max_target = AMR_MAX_TARGETS;
		cpi->max_lun = 0 /* AMR_MAX_LUNS*/;
		cpi->initiator_id = 7;		  /* XXX variable? */
		FUNC9(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
		FUNC9(cpi->hba_vid, "LSI", HBA_IDLEN);
		FUNC9(cpi->dev_name, FUNC4(sim), DEV_IDLEN);
		cpi->unit_number = FUNC6(sim);
		cpi->bus_id = FUNC3(sim);
		cpi->base_transfer_speed = 132 * 1024;  /* XXX */
		cpi->transport = XPORT_SPI;
		cpi->transport_version = 2;
		cpi->protocol = PROTO_SCSI;
		cpi->protocol_version = SCSI_REV_2;
		cpi->ccb_h.status = CAM_REQ_CMP;

		break;
	}

	case XPT_RESET_BUS:
	{
		struct ccb_pathinq	*cpi = & ccb->cpi;

		FUNC7(1, "XPT_RESET_BUS");
		cpi->ccb_h.status = CAM_REQ_CMP;
		break;
	}

	case XPT_RESET_DEV:
	{
		FUNC7(1, "XPT_RESET_DEV");
		ccb->ccb_h.status = CAM_REQ_CMP;
		break;
	}

	case XPT_GET_TRAN_SETTINGS:
	{
		struct ccb_trans_settings	*cts = &(ccb->cts);

		FUNC7(3, "XPT_GET_TRAN_SETTINGS");

		struct ccb_trans_settings_scsi *scsi;
		struct ccb_trans_settings_spi *spi;

		scsi = &cts->proto_specific.scsi;
		spi = &cts->xport_specific.spi;

		cts->protocol = PROTO_SCSI;
		cts->protocol_version = SCSI_REV_2;
		cts->transport = XPORT_SPI;
		cts->transport_version = 2;

		if (cts->type == CTS_TYPE_USER_SETTINGS) {
			ccb->ccb_h.status = CAM_FUNC_NOTAVAIL;
			break;
		}

		spi->flags = CTS_SPI_FLAGS_DISC_ENB;
		spi->bus_width = MSG_EXT_WDTR_BUS_32_BIT;
		spi->sync_period = 6;   /* 40MHz how wide is this bus? */
		spi->sync_offset = 31;  /* How to extract this from board? */

		spi->valid = CTS_SPI_VALID_SYNC_RATE
			| CTS_SPI_VALID_SYNC_OFFSET
			| CTS_SPI_VALID_BUS_WIDTH
			| CTS_SPI_VALID_DISC;
		scsi->valid = CTS_SCSI_VALID_TQ;
		ccb->ccb_h.status = CAM_REQ_CMP;
		break;
	}

	case XPT_SET_TRAN_SETTINGS:
		FUNC7(3, "XPT_SET_TRAN_SETTINGS");
		ccb->ccb_h.status = CAM_FUNC_NOTAVAIL;
		break;


	/*
	 * Reject anything else as unsupported.
	 */
	default:
		/* we can't do this */
		ccb->ccb_h.status = CAM_REQ_INVALID;
		break;
	}

	FUNC8(&sc->amr_list_lock, MA_OWNED);
	FUNC10(ccb);
}