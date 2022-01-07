
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ccb_hdr {int func_code; void* status; struct mfip_softc* ccb_mfip_ptr; } ;
struct ccb_scsiio {int cdb_len; } ;
struct ccb_trans_settings_sas {int bitrate; int valid; } ;
struct TYPE_8__ {struct ccb_trans_settings_sas sas; } ;
struct ccb_trans_settings_scsi {int flags; int valid; } ;
struct TYPE_7__ {struct ccb_trans_settings_scsi scsi; } ;
struct TYPE_9__ {int transport_version; void* transport; void* protocol_version; void* protocol; TYPE_3__ xport_specific; TYPE_2__ proto_specific; } ;
struct TYPE_6__ {void* status; } ;
struct ccb_pathinq {int version_num; int hba_misc; int base_transfer_speed; TYPE_1__ ccb_h; void* protocol_version; void* protocol; int transport_version; void* transport; int bus_id; int unit_number; int dev_name; int hba_vid; int sim_vid; int initiator_id; int max_lun; int max_target; int hba_eng_cnt; int target_sprt; int hba_inquiry; } ;
union ccb {struct ccb_hdr ccb_h; struct ccb_scsiio csio; TYPE_4__ cts; struct ccb_pathinq cpi; } ;
struct mfip_softc {struct mfi_softc* mfi_sc; } ;
struct mfi_softc {int mfi_cam_ccbq; int mfi_io_lock; } ;
struct cam_sim {int dummy; } ;
struct TYPE_10__ {int tqe; } ;


 void* CAM_FUNC_NOTAVAIL ;
 void* CAM_REQ_CMP ;
 void* CAM_REQ_INPROG ;
 void* CAM_REQ_INVALID ;
 int CTS_SAS_VALID_SPEED ;
 int CTS_SCSI_FLAGS_TAG_ENB ;
 int CTS_SCSI_VALID_TQ ;
 int DEV_IDLEN ;
 int HBA_IDLEN ;
 int MA_OWNED ;
 int MFI_SCSI_INITIATOR_ID ;
 int MFI_SCSI_MAX_CDB_LEN ;
 int MFI_SCSI_MAX_LUNS ;
 int MFI_SCSI_MAX_TARGETS ;
 int PIM_NOBUSRESET ;
 int PIM_SEQSCAN ;
 int PIM_UNMAPPED ;
 int PI_TAG_ABLE ;
 void* PROTO_SCSI ;
 void* SCSI_REV_2 ;
 int SIM_IDLEN ;
 int TAILQ_INSERT_TAIL (int *,struct ccb_hdr*,int ) ;
 void* XPORT_SAS ;






 int cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 struct mfip_softc* cam_sim_softc (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int mfi_startio (struct mfi_softc*) ;
 int mtx_assert (int *,int ) ;
 TYPE_5__ sim_links ;
 int strlcpy (int ,char*,int ) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
mfip_cam_action(struct cam_sim *sim, union ccb *ccb)
{
 struct mfip_softc *sc = cam_sim_softc(sim);
 struct mfi_softc *mfisc = sc->mfi_sc;

 mtx_assert(&mfisc->mfi_io_lock, MA_OWNED);

 switch (ccb->ccb_h.func_code) {
 case 132:
 {
  struct ccb_pathinq *cpi = &ccb->cpi;

  cpi->version_num = 1;
  cpi->hba_inquiry = PI_TAG_ABLE;
  cpi->target_sprt = 0;
  cpi->hba_misc = PIM_NOBUSRESET | PIM_SEQSCAN | PIM_UNMAPPED;
  cpi->hba_eng_cnt = 0;
  cpi->max_target = MFI_SCSI_MAX_TARGETS;
  cpi->max_lun = MFI_SCSI_MAX_LUNS;
  cpi->initiator_id = MFI_SCSI_INITIATOR_ID;
  strlcpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
  strlcpy(cpi->hba_vid, "LSI", HBA_IDLEN);
  strlcpy(cpi->dev_name, cam_sim_name(sim), DEV_IDLEN);
  cpi->unit_number = cam_sim_unit(sim);
  cpi->bus_id = cam_sim_bus(sim);
  cpi->base_transfer_speed = 150000;
  cpi->transport = XPORT_SAS;
  cpi->transport_version = 0;
  cpi->protocol = PROTO_SCSI;
  cpi->protocol_version = SCSI_REV_2;
  cpi->ccb_h.status = CAM_REQ_CMP;
  break;
 }
 case 131:
  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 case 130:
  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 case 133:
 {
  struct ccb_trans_settings_scsi *scsi =
      &ccb->cts.proto_specific.scsi;
  struct ccb_trans_settings_sas *sas =
      &ccb->cts.xport_specific.sas;

  ccb->cts.protocol = PROTO_SCSI;
  ccb->cts.protocol_version = SCSI_REV_2;
  ccb->cts.transport = XPORT_SAS;
  ccb->cts.transport_version = 0;

  scsi->valid = CTS_SCSI_VALID_TQ;
  scsi->flags = CTS_SCSI_FLAGS_TAG_ENB;

  sas->valid &= ~CTS_SAS_VALID_SPEED;
  sas->bitrate = 150000;

  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 }
 case 128:
  ccb->ccb_h.status = CAM_FUNC_NOTAVAIL;
  break;
 case 129:
 {
  struct ccb_hdr *ccbh = &ccb->ccb_h;
  struct ccb_scsiio *csio = &ccb->csio;

  ccbh->status = CAM_REQ_INPROG;
  if (csio->cdb_len > MFI_SCSI_MAX_CDB_LEN) {
   ccbh->status = CAM_REQ_INVALID;
   break;
  }
  ccbh->ccb_mfip_ptr = sc;
  TAILQ_INSERT_TAIL(&mfisc->mfi_cam_ccbq, ccbh, sim_links.tqe);
  mfi_startio(mfisc);
  return;
 }
 default:
  ccb->ccb_h.status = CAM_REQ_INVALID;
  break;
 }

 xpt_done(ccb);
 return;
}
