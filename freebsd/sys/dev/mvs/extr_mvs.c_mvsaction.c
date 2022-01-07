
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int func_code; int target_id; void* status; int recovery_type; int path; } ;
struct TYPE_9__ {void* status; } ;
struct ccb_pathinq {int version_num; int max_target; int base_transfer_speed; TYPE_4__ ccb_h; int hba_subdevice; int hba_subvendor; int hba_device; int hba_vendor; int maxio; void* protocol_version; int protocol; void* transport_version; void* transport; int unit_number; int dev_name; int hba_vid; int sim_vid; int bus_id; int initiator_id; int max_lun; int hba_eng_cnt; int hba_misc; int target_sprt; int hba_inquiry; } ;
struct TYPE_7__ {int valid; int revision; int caps; int atapi; void* tags; int pm_present; void* bytecount; int mode; } ;
struct TYPE_8__ {TYPE_2__ sata; } ;
struct TYPE_6__ {int valid; } ;
struct ccb_trans_settings {TYPE_3__ xport_specific; int type; TYPE_1__ proto_specific; void* transport_version; void* transport; void* protocol_version; int protocol; } ;
union ccb {TYPE_5__ ccb_h; struct ccb_pathinq cpi; struct ccb_trans_settings cts; } ;
typedef int uint32_t ;
struct mvs_device {int revision; int caps; int atapi; void* tags; void* bytecount; int mode; } ;
struct mvs_channel {int quirks; int pm_present; struct mvs_device* user; int r_mem; struct mvs_device* curr; int sim; union ccb* frozen; int devices; int dev; } ;
struct cam_sim {int dummy; } ;
typedef int device_t ;


 int ATA_INL (int ,int ) ;
 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 void* CAM_REQ_CMP ;
 void* CAM_REQ_INVALID ;
 void* CAM_SEL_TIMEOUT ;
 int CTS_SATA_CAPS_D ;
 int CTS_SATA_CAPS_H_AN ;
 int CTS_SATA_VALID_ATAPI ;
 int CTS_SATA_VALID_BYTECOUNT ;
 int CTS_SATA_VALID_CAPS ;
 int CTS_SATA_VALID_MODE ;
 int CTS_SATA_VALID_PM ;
 int CTS_SATA_VALID_REVISION ;
 int CTS_SATA_VALID_TAGS ;
 int CTS_TYPE_CURRENT_SETTINGS ;
 int DEV_IDLEN ;
 int HBA_IDLEN ;
 int MAXPHYS ;
 int MVS_MAX_SLOTS ;
 int MVS_Q_GENI ;
 int MVS_Q_GENIIE ;
 int MVS_Q_SOC ;
 int PIM_SEQSCAN ;
 int PI_SATAPM ;
 int PI_SDTR_ABLE ;
 int PI_TAG_ABLE ;
 int PROTO_ATA ;
 int PROTO_UNSPECIFIED ;
 void* PROTO_VERSION_UNSPECIFIED ;
 int RECOVERY_NONE ;
 int SATA_SS ;
 int SATA_SS_SPD_MASK ;
 int SIM_IDLEN ;
 void* XPORT_SATA ;
 void* XPORT_VERSION_UNSPECIFIED ;
 int cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int device_get_parent (int ) ;
 void* min (int,void*) ;
 int mvs_begin_transaction (int ,union ccb*) ;
 int mvs_check_collision (int ,union ccb*) ;
 int mvs_check_ids (int ,union ccb*) ;
 int mvs_reset (int ) ;
 int pci_get_device (int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;
 int pci_get_vendor (int ) ;
 int strlcpy (int ,char*,int ) ;
 int xpt_done (union ccb*) ;
 int xpt_freeze_simq (int ,int) ;

__attribute__((used)) static void
mvsaction(struct cam_sim *sim, union ccb *ccb)
{
 device_t dev, parent;
 struct mvs_channel *ch;

 CAM_DEBUG(ccb->ccb_h.path, CAM_DEBUG_TRACE, ("mvsaction func_code=%x\n",
     ccb->ccb_h.func_code));

 ch = (struct mvs_channel *)cam_sim_softc(sim);
 dev = ch->dev;
 switch (ccb->ccb_h.func_code) {

 case 135:
 case 130:
  if (mvs_check_ids(dev, ccb))
   return;
  if (ch->devices == 0 ||
      (ch->pm_present == 0 &&
       ccb->ccb_h.target_id > 0 && ccb->ccb_h.target_id < 15)) {
   ccb->ccb_h.status = CAM_SEL_TIMEOUT;
   break;
  }
  ccb->ccb_h.recovery_type = RECOVERY_NONE;

  if (mvs_check_collision(dev, ccb)) {

   ch->frozen = ccb;

   xpt_freeze_simq(ch->sim, 1);
   return;
  }
  mvs_begin_transaction(dev, ccb);
  return;
 case 136:

  ccb->ccb_h.status = CAM_REQ_INVALID;
  break;
 case 129:
 {
  struct ccb_trans_settings *cts = &ccb->cts;
  struct mvs_device *d;

  if (mvs_check_ids(dev, ccb))
   return;
  if (cts->type == CTS_TYPE_CURRENT_SETTINGS)
   d = &ch->curr[ccb->ccb_h.target_id];
  else
   d = &ch->user[ccb->ccb_h.target_id];
  if (cts->xport_specific.sata.valid & CTS_SATA_VALID_REVISION)
   d->revision = cts->xport_specific.sata.revision;
  if (cts->xport_specific.sata.valid & CTS_SATA_VALID_MODE)
   d->mode = cts->xport_specific.sata.mode;
  if (cts->xport_specific.sata.valid & CTS_SATA_VALID_BYTECOUNT) {
   d->bytecount = min((ch->quirks & MVS_Q_GENIIE) ? 8192 : 2048,
       cts->xport_specific.sata.bytecount);
  }
  if (cts->xport_specific.sata.valid & CTS_SATA_VALID_TAGS)
   d->tags = min(MVS_MAX_SLOTS, cts->xport_specific.sata.tags);
  if (cts->xport_specific.sata.valid & CTS_SATA_VALID_PM)
   ch->pm_present = cts->xport_specific.sata.pm_present;
  if (cts->xport_specific.sata.valid & CTS_SATA_VALID_ATAPI)
   d->atapi = cts->xport_specific.sata.atapi;
  if (cts->xport_specific.sata.valid & CTS_SATA_VALID_CAPS)
   d->caps = cts->xport_specific.sata.caps;
  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 }
 case 134:

 {
  struct ccb_trans_settings *cts = &ccb->cts;
  struct mvs_device *d;
  uint32_t status;

  if (mvs_check_ids(dev, ccb))
   return;
  if (cts->type == CTS_TYPE_CURRENT_SETTINGS)
   d = &ch->curr[ccb->ccb_h.target_id];
  else
   d = &ch->user[ccb->ccb_h.target_id];
  cts->protocol = PROTO_UNSPECIFIED;
  cts->protocol_version = PROTO_VERSION_UNSPECIFIED;
  cts->transport = XPORT_SATA;
  cts->transport_version = XPORT_VERSION_UNSPECIFIED;
  cts->proto_specific.valid = 0;
  cts->xport_specific.sata.valid = 0;
  if (cts->type == CTS_TYPE_CURRENT_SETTINGS &&
      (ccb->ccb_h.target_id == 15 ||
      (ccb->ccb_h.target_id == 0 && !ch->pm_present))) {
   status = ATA_INL(ch->r_mem, SATA_SS) & SATA_SS_SPD_MASK;
   if (status & 0x0f0) {
    cts->xport_specific.sata.revision =
        (status & 0x0f0) >> 4;
    cts->xport_specific.sata.valid |=
        CTS_SATA_VALID_REVISION;
   }
   cts->xport_specific.sata.caps = d->caps & CTS_SATA_CAPS_D;


   cts->xport_specific.sata.caps |= CTS_SATA_CAPS_H_AN;
   cts->xport_specific.sata.caps &=
       ch->user[ccb->ccb_h.target_id].caps;
   cts->xport_specific.sata.valid |= CTS_SATA_VALID_CAPS;
  } else {
   cts->xport_specific.sata.revision = d->revision;
   cts->xport_specific.sata.valid |= CTS_SATA_VALID_REVISION;
   cts->xport_specific.sata.caps = d->caps;
   if (cts->type == CTS_TYPE_CURRENT_SETTINGS )

    cts->xport_specific.sata.caps &= ~CTS_SATA_CAPS_H_AN;
   cts->xport_specific.sata.valid |= CTS_SATA_VALID_CAPS;
  }
  cts->xport_specific.sata.mode = d->mode;
  cts->xport_specific.sata.valid |= CTS_SATA_VALID_MODE;
  cts->xport_specific.sata.bytecount = d->bytecount;
  cts->xport_specific.sata.valid |= CTS_SATA_VALID_BYTECOUNT;
  cts->xport_specific.sata.pm_present = ch->pm_present;
  cts->xport_specific.sata.valid |= CTS_SATA_VALID_PM;
  cts->xport_specific.sata.tags = d->tags;
  cts->xport_specific.sata.valid |= CTS_SATA_VALID_TAGS;
  cts->xport_specific.sata.atapi = d->atapi;
  cts->xport_specific.sata.valid |= CTS_SATA_VALID_ATAPI;
  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 }
 case 132:
 case 131:
  mvs_reset(dev);
  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 case 128:

  ccb->ccb_h.status = CAM_REQ_INVALID;
  break;
 case 133:
 {
  struct ccb_pathinq *cpi = &ccb->cpi;

  parent = device_get_parent(dev);
  cpi->version_num = 1;
  cpi->hba_inquiry = PI_SDTR_ABLE;
  if (!(ch->quirks & MVS_Q_GENI)) {
   cpi->hba_inquiry |= PI_SATAPM;

   if ((ch->quirks & MVS_Q_GENIIE) || ch->pm_present == 0)
    cpi->hba_inquiry |= PI_TAG_ABLE;
  }
  cpi->target_sprt = 0;
  cpi->hba_misc = PIM_SEQSCAN;
  cpi->hba_eng_cnt = 0;
  if (!(ch->quirks & MVS_Q_GENI))
   cpi->max_target = 15;
  else
   cpi->max_target = 0;
  cpi->max_lun = 0;
  cpi->initiator_id = 0;
  cpi->bus_id = cam_sim_bus(sim);
  cpi->base_transfer_speed = 150000;
  strlcpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
  strlcpy(cpi->hba_vid, "Marvell", HBA_IDLEN);
  strlcpy(cpi->dev_name, cam_sim_name(sim), DEV_IDLEN);
  cpi->unit_number = cam_sim_unit(sim);
  cpi->transport = XPORT_SATA;
  cpi->transport_version = XPORT_VERSION_UNSPECIFIED;
  cpi->protocol = PROTO_ATA;
  cpi->protocol_version = PROTO_VERSION_UNSPECIFIED;
  cpi->maxio = MAXPHYS;
  if ((ch->quirks & MVS_Q_SOC) == 0) {
   cpi->hba_vendor = pci_get_vendor(parent);
   cpi->hba_device = pci_get_device(parent);
   cpi->hba_subvendor = pci_get_subvendor(parent);
   cpi->hba_subdevice = pci_get_subdevice(parent);
  }
  cpi->ccb_h.status = CAM_REQ_CMP;
  break;
 }
 default:
  ccb->ccb_h.status = CAM_REQ_INVALID;
  break;
 }
 xpt_done(ccb);
}
