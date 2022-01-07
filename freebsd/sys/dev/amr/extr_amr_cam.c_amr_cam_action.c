
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ccb_hdr {int func_code; int flags; void* status; } ;
struct ccb_trans_settings_spi {int sync_period; int sync_offset; int valid; int bus_width; int flags; } ;
struct TYPE_12__ {struct ccb_trans_settings_spi spi; } ;
struct ccb_trans_settings_scsi {int valid; } ;
struct TYPE_11__ {struct ccb_trans_settings_scsi scsi; } ;
struct ccb_trans_settings {int transport_version; int type; void* transport; void* protocol_version; void* protocol; TYPE_6__ xport_specific; TYPE_5__ proto_specific; } ;
struct TYPE_10__ {void* status; } ;
struct ccb_pathinq {int version_num; int hba_inquiry; int hba_misc; int initiator_id; int base_transfer_speed; int transport_version; TYPE_4__ ccb_h; void* protocol_version; void* protocol; void* transport; void* bus_id; int unit_number; int dev_name; int hba_vid; int sim_vid; int max_lun; int max_target; int hba_eng_cnt; int target_sprt; } ;
struct TYPE_8__ {TYPE_1__* entries; } ;
struct TYPE_9__ {TYPE_2__ sim_priv; int target_lun; } ;
struct ccb_scsiio {TYPE_3__ ccb_h; int cdb_len; } ;
union ccb {struct ccb_hdr ccb_h; struct ccb_trans_settings cts; struct ccb_pathinq cpi; int ccg; struct ccb_scsiio csio; } ;
struct cam_sim {int dummy; } ;
struct amr_softc {int amr_list_lock; int support_ext_cdb; } ;
struct TYPE_7__ {void* field; } ;


 int AMR_MAX_CDB_LEN ;
 int AMR_MAX_EXTCDB_LEN ;
 int AMR_MAX_TARGETS ;
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
 int CTS_SCSI_VALID_TQ ;
 int CTS_SPI_FLAGS_DISC_ENB ;
 int CTS_SPI_VALID_BUS_WIDTH ;
 int CTS_SPI_VALID_DISC ;
 int CTS_SPI_VALID_SYNC_OFFSET ;
 int CTS_SPI_VALID_SYNC_RATE ;
 int CTS_TYPE_USER_SETTINGS ;
 int DEV_IDLEN ;
 int HBA_IDLEN ;
 int MA_OWNED ;
 int MSG_EXT_WDTR_BUS_32_BIT ;
 int PIM_NOBUSRESET ;
 int PIM_SEQSCAN ;
 int PI_SDTR_ABLE ;
 int PI_TAG_ABLE ;
 int PI_WIDE_16 ;
 void* PROTO_SCSI ;
 void* SCSI_REV_2 ;
 int SIM_IDLEN ;
 void* XPORT_SPI ;







 int amr_enqueue_ccb (struct amr_softc*,union ccb*) ;
 int amr_startio (struct amr_softc*) ;
 int cam_calc_geometry (int *,int) ;
 void* cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 struct amr_softc* cam_sim_softc (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int debug (int,char*) ;
 int mtx_assert (int *,int ) ;
 int strlcpy (int ,char*,int ) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
amr_cam_action(struct cam_sim *sim, union ccb *ccb)
{
 struct amr_softc *sc = cam_sim_softc(sim);

 switch(ccb->ccb_h.func_code) {




 case 129:
 {
  struct ccb_hdr *ccbh = &ccb->ccb_h;
  struct ccb_scsiio *csio = &ccb->csio;


  ccbh->status = CAM_REQ_INPROG;


  if (csio->cdb_len > AMR_MAX_EXTCDB_LEN)
   ccbh->status = CAM_REQ_INVALID;

  if ((csio->cdb_len > AMR_MAX_CDB_LEN) &&
      (sc->support_ext_cdb == 0))
   ccbh->status = CAM_REQ_INVALID;


  if ((ccbh->flags & CAM_CDB_POINTER) &&
      (ccbh->flags & CAM_CDB_PHYS))
   ccbh->status = CAM_REQ_INVALID;




  if ((ccbh->flags & CAM_DIR_MASK) != CAM_DIR_NONE) {
   if ((ccbh->flags & CAM_DATA_MASK) != CAM_DATA_VADDR)

    ccbh->status = CAM_REQ_INVALID;
  }







  if (csio->ccb_h.target_lun != 0)
   ccbh->status = CAM_DEV_NOT_THERE;


  if (ccbh->status == CAM_REQ_INPROG) {


   csio->ccb_h.sim_priv.entries[0].field= cam_sim_bus(sim);

   amr_enqueue_ccb(sc, ccb);
   amr_startio(sc);
   return;
  }
  break;
 }

 case 134:
 {
  cam_calc_geometry(&ccb->ccg, 1);
  break;
 }




 case 132:
 {
  struct ccb_pathinq *cpi = & ccb->cpi;

  debug(3, "XPT_PATH_INQ");
  cpi->version_num = 1;
  cpi->hba_inquiry = PI_SDTR_ABLE|PI_TAG_ABLE|PI_WIDE_16;
  cpi->target_sprt = 0;
  cpi->hba_misc = PIM_NOBUSRESET|PIM_SEQSCAN;
  cpi->hba_eng_cnt = 0;
  cpi->max_target = AMR_MAX_TARGETS;
  cpi->max_lun = 0 ;
  cpi->initiator_id = 7;
  strlcpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
  strlcpy(cpi->hba_vid, "LSI", HBA_IDLEN);
  strlcpy(cpi->dev_name, cam_sim_name(sim), DEV_IDLEN);
  cpi->unit_number = cam_sim_unit(sim);
  cpi->bus_id = cam_sim_bus(sim);
  cpi->base_transfer_speed = 132 * 1024;
  cpi->transport = XPORT_SPI;
  cpi->transport_version = 2;
  cpi->protocol = PROTO_SCSI;
  cpi->protocol_version = SCSI_REV_2;
  cpi->ccb_h.status = CAM_REQ_CMP;

  break;
 }

 case 131:
 {
  struct ccb_pathinq *cpi = & ccb->cpi;

  debug(1, "XPT_RESET_BUS");
  cpi->ccb_h.status = CAM_REQ_CMP;
  break;
 }

 case 130:
 {
  debug(1, "XPT_RESET_DEV");
  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 }

 case 133:
 {
  struct ccb_trans_settings *cts = &(ccb->cts);

  debug(3, "XPT_GET_TRAN_SETTINGS");

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
  spi->sync_period = 6;
  spi->sync_offset = 31;

  spi->valid = CTS_SPI_VALID_SYNC_RATE
   | CTS_SPI_VALID_SYNC_OFFSET
   | CTS_SPI_VALID_BUS_WIDTH
   | CTS_SPI_VALID_DISC;
  scsi->valid = CTS_SCSI_VALID_TQ;
  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 }

 case 128:
  debug(3, "XPT_SET_TRAN_SETTINGS");
  ccb->ccb_h.status = CAM_FUNC_NOTAVAIL;
  break;





 default:

  ccb->ccb_h.status = CAM_REQ_INVALID;
  break;
 }

 mtx_assert(&sc->amr_list_lock, MA_OWNED);
 xpt_done(ccb);
}
