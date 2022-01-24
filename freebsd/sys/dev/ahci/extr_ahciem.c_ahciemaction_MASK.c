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
struct TYPE_4__ {int func_code; void* status; int /*<<< orphan*/  path; } ;
struct TYPE_3__ {void* status; } ;
struct ccb_pathinq {int version_num; int base_transfer_speed; TYPE_1__ ccb_h; int /*<<< orphan*/  hba_subdevice; int /*<<< orphan*/  hba_subvendor; int /*<<< orphan*/  hba_device; int /*<<< orphan*/  hba_vendor; int /*<<< orphan*/  maxio; int /*<<< orphan*/  protocol_version; int /*<<< orphan*/  protocol; int /*<<< orphan*/  transport_version; int /*<<< orphan*/  transport; int /*<<< orphan*/  unit_number; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  hba_vid; int /*<<< orphan*/  sim_vid; int /*<<< orphan*/  bus_id; int /*<<< orphan*/  initiator_id; int /*<<< orphan*/  max_lun; int /*<<< orphan*/  max_target; int /*<<< orphan*/  hba_eng_cnt; int /*<<< orphan*/  hba_misc; int /*<<< orphan*/  target_sprt; int /*<<< orphan*/  hba_inquiry; } ;
union ccb {TYPE_2__ ccb_h; struct ccb_pathinq cpi; } ;
struct cam_sim {int dummy; } ;
struct ahci_enclosure {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 void* CAM_REQ_CMP ; 
 void* CAM_REQ_INVALID ; 
 int /*<<< orphan*/  DEV_IDLEN ; 
 int /*<<< orphan*/  HBA_IDLEN ; 
 int /*<<< orphan*/  MAXPHYS ; 
 int /*<<< orphan*/  PIM_SEQSCAN ; 
 int /*<<< orphan*/  PI_SDTR_ABLE ; 
 int /*<<< orphan*/  PROTO_ATA ; 
 int /*<<< orphan*/  PROTO_VERSION_UNSPECIFIED ; 
 int /*<<< orphan*/  SIM_IDLEN ; 
 int /*<<< orphan*/  XPORT_SATA ; 
 int /*<<< orphan*/  XPORT_VERSION_UNSPECIFIED ; 
#define  XPT_ATA_IO 131 
#define  XPT_PATH_INQ 130 
#define  XPT_RESET_BUS 129 
#define  XPT_RESET_DEV 128 
 int /*<<< orphan*/  FUNC1 (union ccb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,union ccb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_sim*) ; 
 char* FUNC5 (struct cam_sim*) ; 
 struct ahci_enclosure* FUNC6 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (union ccb*) ; 

__attribute__((used)) static void
FUNC15(struct cam_sim *sim, union ccb *ccb)
{
	device_t dev, parent;
	struct ahci_enclosure *enc;

	FUNC0(ccb->ccb_h.path, CAM_DEBUG_TRACE,
	    ("ahciemaction func_code=%x\n", ccb->ccb_h.func_code));

	enc = FUNC6(sim);
	dev = enc->dev;
	switch (ccb->ccb_h.func_code) {
	case XPT_ATA_IO:	/* Execute the requested I/O operation */
		if (FUNC1(ccb))
			return;
		FUNC2(dev, ccb);
		return;
	case XPT_RESET_BUS:		/* Reset the specified bus */
	case XPT_RESET_DEV:	/* Bus Device Reset the specified device */
		FUNC3(dev);
		ccb->ccb_h.status = CAM_REQ_CMP;
		break;
	case XPT_PATH_INQ:		/* Path routing inquiry */
	{
		struct ccb_pathinq *cpi = &ccb->cpi;

		parent = FUNC8(dev);
		cpi->version_num = 1; /* XXX??? */
		cpi->hba_inquiry = PI_SDTR_ABLE;
		cpi->target_sprt = 0;
		cpi->hba_misc = PIM_SEQSCAN;
		cpi->hba_eng_cnt = 0;
		cpi->max_target = 0;
		cpi->max_lun = 0;
		cpi->initiator_id = 0;
		cpi->bus_id = FUNC4(sim);
		cpi->base_transfer_speed = 150000;
		FUNC13(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
		FUNC13(cpi->hba_vid, "AHCI", HBA_IDLEN);
		FUNC13(cpi->dev_name, FUNC5(sim), DEV_IDLEN);
		cpi->unit_number = FUNC7(sim);
		cpi->transport = XPORT_SATA;
		cpi->transport_version = XPORT_VERSION_UNSPECIFIED;
		cpi->protocol = PROTO_ATA;
		cpi->protocol_version = PROTO_VERSION_UNSPECIFIED;
		cpi->maxio = MAXPHYS;
		cpi->hba_vendor = FUNC12(parent);
		cpi->hba_device = FUNC9(parent);
		cpi->hba_subvendor = FUNC11(parent);
		cpi->hba_subdevice = FUNC10(parent);
		cpi->ccb_h.status = CAM_REQ_CMP;
		break;
	}
	default:
		ccb->ccb_h.status = CAM_REQ_INVALID;
		break;
	}
	FUNC14(ccb);
}