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
struct TYPE_3__ {int max_sg_elem; } ;
struct pqisrc_softstate {TYPE_1__ pqi_cap; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct ccb_pathinq {int version_num; int hba_inquiry; int hba_misc; int max_target; int maxio; int initiator_id; int base_transfer_speed; int transport_version; TYPE_2__ ccb_h; int /*<<< orphan*/  transport; int /*<<< orphan*/  protocol_version; int /*<<< orphan*/  protocol; int /*<<< orphan*/  bus_id; int /*<<< orphan*/  unit_number; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  hba_vid; int /*<<< orphan*/  sim_vid; int /*<<< orphan*/  max_lun; scalar_t__ hba_eng_cnt; scalar_t__ target_sprt; } ;
struct cam_sim {int dummy; } ;
typedef  struct pqisrc_softstate pqisrc_softstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DEV_IDLEN ; 
 int /*<<< orphan*/  HBA_IDLEN ; 
 int PAGE_SIZE ; 
 int PIM_NOBUSRESET ; 
 int PIM_UNMAPPED ; 
 int PI_SDTR_ABLE ; 
 int PI_TAG_ABLE ; 
 int PI_WIDE_16 ; 
 int /*<<< orphan*/  PQI_MAX_MULTILUN ; 
 int /*<<< orphan*/  PROTO_SCSI ; 
 int /*<<< orphan*/  SCSI_REV_SPC4 ; 
 int /*<<< orphan*/  SIM_IDLEN ; 
 int /*<<< orphan*/  XPORT_SPI ; 
 int /*<<< orphan*/  FUNC1 (struct cam_sim*) ; 
 char* FUNC2 (struct cam_sim*) ; 
 scalar_t__ FUNC3 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct cam_sim *sim, struct ccb_pathinq *cpi)
{

	pqisrc_softstate_t *softs = (struct pqisrc_softstate *)
					FUNC3(sim);
	FUNC0("IN\n");

	cpi->version_num = 1;
	cpi->hba_inquiry = PI_SDTR_ABLE|PI_TAG_ABLE|PI_WIDE_16;
	cpi->target_sprt = 0;
	cpi->hba_misc = PIM_NOBUSRESET | PIM_UNMAPPED;
	cpi->hba_eng_cnt = 0;
	cpi->max_lun = PQI_MAX_MULTILUN;
	cpi->max_target = 1088;
	cpi->maxio = (softs->pqi_cap.max_sg_elem - 1) * PAGE_SIZE;
	cpi->initiator_id = 255;
	FUNC5(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
	FUNC5(cpi->hba_vid, "Microsemi", HBA_IDLEN);
	FUNC5(cpi->dev_name, FUNC2(sim), DEV_IDLEN);
	cpi->unit_number = FUNC4(sim);
	cpi->bus_id = FUNC1(sim);
	cpi->base_transfer_speed = 1200000; /* Base bus speed in KB/sec */
	cpi->protocol = PROTO_SCSI;
	cpi->protocol_version = SCSI_REV_SPC4;
	cpi->transport = XPORT_SPI;
	cpi->transport_version = 2;
	cpi->ccb_h.status = CAM_REQ_CMP;

	FUNC0("OUT\n");
}