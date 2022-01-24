#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  status; } ;
struct ccb_pathinq {int version_num; int hba_misc; int base_transfer_speed; int maxio; int /*<<< orphan*/  hba_subdevice; int /*<<< orphan*/  hba_subvendor; int /*<<< orphan*/  hba_device; int /*<<< orphan*/  hba_vendor; scalar_t__ transport_version; int /*<<< orphan*/  transport; int /*<<< orphan*/  protocol_version; int /*<<< orphan*/  protocol; int /*<<< orphan*/  bus_id; int /*<<< orphan*/  unit_number; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  hba_vid; int /*<<< orphan*/  sim_vid; int /*<<< orphan*/  initiator_id; int /*<<< orphan*/  max_lun; int /*<<< orphan*/  max_target; scalar_t__ hba_eng_cnt; scalar_t__ target_sprt; int /*<<< orphan*/  hba_inquiry; } ;
union ccb {TYPE_1__ ccb_h; struct ccb_pathinq cpi; } ;
struct vtscsi_softc {int vtscsi_max_nsegs; int /*<<< orphan*/  vtscsi_max_lun; int /*<<< orphan*/  vtscsi_max_target; int /*<<< orphan*/  vtscsi_dev; } ;
struct cam_sim {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  DEV_IDLEN ; 
 int /*<<< orphan*/  HBA_IDLEN ; 
 int PAGE_SIZE ; 
 int PIM_NOBUSRESET ; 
 int PIM_SEQSCAN ; 
 int PIM_UNMAPPED ; 
 int /*<<< orphan*/  PI_TAG_ABLE ; 
 int /*<<< orphan*/  PROTO_SCSI ; 
 int /*<<< orphan*/  SCSI_REV_SPC3 ; 
 int /*<<< orphan*/  SIM_IDLEN ; 
 int /*<<< orphan*/  VTSCSI_INITIATOR_ID ; 
 int VTSCSI_MIN_SEGMENTS ; 
 int /*<<< orphan*/  VTSCSI_TRACE ; 
 int /*<<< orphan*/  XPORT_SAS ; 
 int /*<<< orphan*/  FUNC0 (struct cam_sim*) ; 
 char* FUNC1 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ vtscsi_bus_reset_disable ; 
 int /*<<< orphan*/  FUNC8 (struct vtscsi_softc*,int /*<<< orphan*/ ,char*,struct cam_sim*,union ccb*) ; 
 int /*<<< orphan*/  FUNC9 (union ccb*) ; 

__attribute__((used)) static void
FUNC10(struct vtscsi_softc *sc, struct cam_sim *sim,
    union ccb *ccb)
{
	device_t dev;
	struct ccb_pathinq *cpi;

	dev = sc->vtscsi_dev;
	cpi = &ccb->cpi;

	FUNC8(sc, VTSCSI_TRACE, "sim=%p ccb=%p\n", sim, ccb);

	cpi->version_num = 1;
	cpi->hba_inquiry = PI_TAG_ABLE;
	cpi->target_sprt = 0;
	cpi->hba_misc = PIM_SEQSCAN | PIM_UNMAPPED;
	if (vtscsi_bus_reset_disable != 0)
		cpi->hba_misc |= PIM_NOBUSRESET;
	cpi->hba_eng_cnt = 0;

	cpi->max_target = sc->vtscsi_max_target;
	cpi->max_lun = sc->vtscsi_max_lun;
	cpi->initiator_id = VTSCSI_INITIATOR_ID;

	FUNC3(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
	FUNC3(cpi->hba_vid, "VirtIO", HBA_IDLEN);
	FUNC3(cpi->dev_name, FUNC1(sim), DEV_IDLEN);

	cpi->unit_number = FUNC2(sim);
	cpi->bus_id = FUNC0(sim);

	cpi->base_transfer_speed = 300000;

	cpi->protocol = PROTO_SCSI;
	cpi->protocol_version = SCSI_REV_SPC3;
	cpi->transport = XPORT_SAS;
	cpi->transport_version = 0;

	cpi->maxio = (sc->vtscsi_max_nsegs - VTSCSI_MIN_SEGMENTS - 1) *
	    PAGE_SIZE;

	cpi->hba_vendor = FUNC7(dev);
	cpi->hba_device = FUNC4(dev);
	cpi->hba_subvendor = FUNC6(dev);
	cpi->hba_subdevice = FUNC5(dev);

	ccb->ccb_h.status = CAM_REQ_CMP;
	FUNC9(ccb);
}