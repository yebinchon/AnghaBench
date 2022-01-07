
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_sg_elem; } ;
struct pqisrc_softstate {TYPE_1__ pqi_cap; } ;
struct TYPE_4__ {int status; } ;
struct ccb_pathinq {int version_num; int hba_inquiry; int hba_misc; int max_target; int maxio; int initiator_id; int base_transfer_speed; int transport_version; TYPE_2__ ccb_h; int transport; int protocol_version; int protocol; int bus_id; int unit_number; int dev_name; int hba_vid; int sim_vid; int max_lun; scalar_t__ hba_eng_cnt; scalar_t__ target_sprt; } ;
struct cam_sim {int dummy; } ;
typedef struct pqisrc_softstate pqisrc_softstate_t ;


 int CAM_REQ_CMP ;
 int DBG_FUNC (char*) ;
 int DEV_IDLEN ;
 int HBA_IDLEN ;
 int PAGE_SIZE ;
 int PIM_NOBUSRESET ;
 int PIM_UNMAPPED ;
 int PI_SDTR_ABLE ;
 int PI_TAG_ABLE ;
 int PI_WIDE_16 ;
 int PQI_MAX_MULTILUN ;
 int PROTO_SCSI ;
 int SCSI_REV_SPC4 ;
 int SIM_IDLEN ;
 int XPORT_SPI ;
 int cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int strncpy (int ,char*,int ) ;

__attribute__((used)) static void update_sim_properties(struct cam_sim *sim, struct ccb_pathinq *cpi)
{

 pqisrc_softstate_t *softs = (struct pqisrc_softstate *)
     cam_sim_softc(sim);
 DBG_FUNC("IN\n");

 cpi->version_num = 1;
 cpi->hba_inquiry = PI_SDTR_ABLE|PI_TAG_ABLE|PI_WIDE_16;
 cpi->target_sprt = 0;
 cpi->hba_misc = PIM_NOBUSRESET | PIM_UNMAPPED;
 cpi->hba_eng_cnt = 0;
 cpi->max_lun = PQI_MAX_MULTILUN;
 cpi->max_target = 1088;
 cpi->maxio = (softs->pqi_cap.max_sg_elem - 1) * PAGE_SIZE;
 cpi->initiator_id = 255;
 strncpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
 strncpy(cpi->hba_vid, "Microsemi", HBA_IDLEN);
 strncpy(cpi->dev_name, cam_sim_name(sim), DEV_IDLEN);
 cpi->unit_number = cam_sim_unit(sim);
 cpi->bus_id = cam_sim_bus(sim);
 cpi->base_transfer_speed = 1200000;
 cpi->protocol = PROTO_SCSI;
 cpi->protocol_version = SCSI_REV_SPC4;
 cpi->transport = XPORT_SPI;
 cpi->transport_version = 2;
 cpi->ccb_h.status = CAM_REQ_CMP;

 DBG_FUNC("OUT\n");
}
