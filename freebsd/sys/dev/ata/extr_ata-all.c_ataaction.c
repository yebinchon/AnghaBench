
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {int func_code; int target_id; void* status; int path; } ;
struct TYPE_15__ {void* status; } ;
struct ccb_pathinq {int version_num; int hba_misc; int max_target; int base_transfer_speed; TYPE_7__ ccb_h; int hba_subdevice; int hba_subvendor; int hba_device; int hba_vendor; int maxio; void* protocol_version; int protocol; void* transport_version; void* transport; int unit_number; int dev_name; int hba_vid; int sim_vid; int bus_id; int initiator_id; int max_lun; int hba_eng_cnt; int target_sprt; int hba_inquiry; } ;
struct TYPE_12__ {int valid; int caps; int atapi; int bytecount; void* mode; } ;
struct TYPE_11__ {int valid; int revision; int caps; int atapi; int bytecount; void* mode; } ;
struct TYPE_13__ {TYPE_4__ ata; TYPE_3__ sata; } ;
struct ccb_trans_settings {TYPE_5__ xport_specific; int type; void* transport_version; void* transport; void* protocol_version; int protocol; } ;
struct ata_res {int lba_high; int lba_mid; } ;
struct TYPE_9__ {int flags; int control; } ;
struct TYPE_10__ {struct ata_res res; TYPE_1__ cmd; } ;
union ccb {TYPE_8__ ccb_h; struct ccb_pathinq cpi; struct ccb_trans_settings cts; TYPE_2__ ataio; } ;
struct cam_sim {int dummy; } ;
struct TYPE_14__ {int max_iosize; } ;
struct ata_channel {int devices; int flags; TYPE_6__ dma; struct ata_cam_device* user; int pm_level; struct ata_cam_device* curr; int dev; int running; } ;
struct ata_cam_device {int revision; int caps; int atapi; int bytecount; void* mode; } ;
typedef int device_t ;


 int ATA_ATAPI_MASTER ;
 int ATA_ATA_MASTER ;
 int ATA_A_RESET ;
 int ATA_GETREV (int ,size_t) ;
 int ATA_NO_48BIT_DMA ;
 int ATA_NO_SLAVE ;
 int ATA_SATA ;
 void* ATA_SETMODE (int ,size_t,void*) ;
 int CAM_ATAIO_CONTROL ;
 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 void* CAM_REQ_CMP ;
 void* CAM_REQ_INVALID ;
 void* CAM_SEL_TIMEOUT ;
 int CTS_ATA_CAPS_D ;
 int CTS_ATA_CAPS_H_DMA48 ;
 int CTS_ATA_VALID_ATAPI ;
 int CTS_ATA_VALID_BYTECOUNT ;
 int CTS_ATA_VALID_CAPS ;
 int CTS_ATA_VALID_MODE ;
 int CTS_SATA_CAPS_D ;
 int CTS_SATA_CAPS_H_PMREQ ;
 int CTS_SATA_VALID_ATAPI ;
 int CTS_SATA_VALID_BYTECOUNT ;
 int CTS_SATA_VALID_CAPS ;
 int CTS_SATA_VALID_MODE ;
 int CTS_SATA_VALID_REVISION ;
 int CTS_TYPE_CURRENT_SETTINGS ;
 int DEV_IDLEN ;
 int DFLTPHYS ;
 int HBA_IDLEN ;
 int PIM_SEQSCAN ;
 int PIM_UNMAPPED ;
 int PI_SDTR_ABLE ;
 int PROTO_ATA ;
 int PROTO_UNSPECIFIED ;
 void* PROTO_VERSION_UNSPECIFIED ;
 int SIM_IDLEN ;
 void* XPORT_ATA ;
 void* XPORT_SATA ;
 void* XPORT_VERSION_UNSPECIFIED ;
 int ata_cam_begin_transaction (int ,union ccb*) ;
 int ata_check_ids (int ,union ccb*) ;
 int ata_reinit (int ) ;
 int bzero (struct ata_res*,int) ;
 int cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int devclass_find (char*) ;
 int device_get_devclass (int ) ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*) ;
 int min (int,int ) ;
 int pci_get_device (int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;
 int pci_get_vendor (int ) ;
 int strlcpy (int ,char*,int ) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
ataaction(struct cam_sim *sim, union ccb *ccb)
{
 device_t dev, parent;
 struct ata_channel *ch;

 CAM_DEBUG(ccb->ccb_h.path, CAM_DEBUG_TRACE, ("ataaction func_code=%x\n",
     ccb->ccb_h.func_code));

 ch = (struct ata_channel *)cam_sim_softc(sim);
 dev = ch->dev;
 switch (ccb->ccb_h.func_code) {

 case 135:
 case 130:
  if (ata_check_ids(dev, ccb))
   return;
  if ((ch->devices & ((ATA_ATA_MASTER | ATA_ATAPI_MASTER)
      << ccb->ccb_h.target_id)) == 0) {
   ccb->ccb_h.status = CAM_SEL_TIMEOUT;
   break;
  }
  if (ch->running)
   device_printf(dev, "already running!\n");
  if (ccb->ccb_h.func_code == 135 &&
      (ccb->ataio.cmd.flags & CAM_ATAIO_CONTROL) &&
      (ccb->ataio.cmd.control & ATA_A_RESET)) {
   struct ata_res *res = &ccb->ataio.res;

   bzero(res, sizeof(*res));
   if (ch->devices & (ATA_ATA_MASTER << ccb->ccb_h.target_id)) {
    res->lba_high = 0;
    res->lba_mid = 0;
   } else {
    res->lba_high = 0xeb;
    res->lba_mid = 0x14;
   }
   ccb->ccb_h.status = CAM_REQ_CMP;
   break;
  }
  ata_cam_begin_transaction(dev, ccb);
  return;
 case 136:

  ccb->ccb_h.status = CAM_REQ_INVALID;
  break;
 case 129:
 {
  struct ccb_trans_settings *cts = &ccb->cts;
  struct ata_cam_device *d;

  if (ata_check_ids(dev, ccb))
   return;
  if (cts->type == CTS_TYPE_CURRENT_SETTINGS)
   d = &ch->curr[ccb->ccb_h.target_id];
  else
   d = &ch->user[ccb->ccb_h.target_id];
  if (ch->flags & ATA_SATA) {
   if (cts->xport_specific.sata.valid & CTS_SATA_VALID_REVISION)
    d->revision = cts->xport_specific.sata.revision;
   if (cts->xport_specific.sata.valid & CTS_SATA_VALID_MODE) {
    if (cts->type == CTS_TYPE_CURRENT_SETTINGS) {
     d->mode = ATA_SETMODE(ch->dev,
         ccb->ccb_h.target_id,
         cts->xport_specific.sata.mode);
    } else
     d->mode = cts->xport_specific.sata.mode;
   }
   if (cts->xport_specific.sata.valid & CTS_SATA_VALID_BYTECOUNT)
    d->bytecount = min(8192, cts->xport_specific.sata.bytecount);
   if (cts->xport_specific.sata.valid & CTS_SATA_VALID_ATAPI)
    d->atapi = cts->xport_specific.sata.atapi;
   if (cts->xport_specific.sata.valid & CTS_SATA_VALID_CAPS)
    d->caps = cts->xport_specific.sata.caps;
  } else {
   if (cts->xport_specific.ata.valid & CTS_ATA_VALID_MODE) {
    if (cts->type == CTS_TYPE_CURRENT_SETTINGS) {
     d->mode = ATA_SETMODE(ch->dev,
         ccb->ccb_h.target_id,
         cts->xport_specific.ata.mode);
    } else
     d->mode = cts->xport_specific.ata.mode;
   }
   if (cts->xport_specific.ata.valid & CTS_ATA_VALID_BYTECOUNT)
    d->bytecount = cts->xport_specific.ata.bytecount;
   if (cts->xport_specific.ata.valid & CTS_ATA_VALID_ATAPI)
    d->atapi = cts->xport_specific.ata.atapi;
   if (cts->xport_specific.ata.valid & CTS_ATA_VALID_CAPS)
    d->caps = cts->xport_specific.ata.caps;
  }
  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 }
 case 134:
 {
  struct ccb_trans_settings *cts = &ccb->cts;
  struct ata_cam_device *d;

  if (ata_check_ids(dev, ccb))
   return;
  if (cts->type == CTS_TYPE_CURRENT_SETTINGS)
   d = &ch->curr[ccb->ccb_h.target_id];
  else
   d = &ch->user[ccb->ccb_h.target_id];
  cts->protocol = PROTO_UNSPECIFIED;
  cts->protocol_version = PROTO_VERSION_UNSPECIFIED;
  if (ch->flags & ATA_SATA) {
   cts->transport = XPORT_SATA;
   cts->transport_version = XPORT_VERSION_UNSPECIFIED;
   cts->xport_specific.sata.valid = 0;
   cts->xport_specific.sata.mode = d->mode;
   cts->xport_specific.sata.valid |= CTS_SATA_VALID_MODE;
   cts->xport_specific.sata.bytecount = d->bytecount;
   cts->xport_specific.sata.valid |= CTS_SATA_VALID_BYTECOUNT;
   if (cts->type == CTS_TYPE_CURRENT_SETTINGS) {
    cts->xport_specific.sata.revision =
        ATA_GETREV(dev, ccb->ccb_h.target_id);
    if (cts->xport_specific.sata.revision != 0xff) {
     cts->xport_specific.sata.valid |=
         CTS_SATA_VALID_REVISION;
    }
    cts->xport_specific.sata.caps =
        d->caps & CTS_SATA_CAPS_D;
    if (ch->pm_level) {
     cts->xport_specific.sata.caps |=
         CTS_SATA_CAPS_H_PMREQ;
    }
    cts->xport_specific.sata.caps &=
        ch->user[ccb->ccb_h.target_id].caps;
   } else {
    cts->xport_specific.sata.revision = d->revision;
    cts->xport_specific.sata.valid |= CTS_SATA_VALID_REVISION;
    cts->xport_specific.sata.caps = d->caps;
   }
   cts->xport_specific.sata.valid |= CTS_SATA_VALID_CAPS;
   cts->xport_specific.sata.atapi = d->atapi;
   cts->xport_specific.sata.valid |= CTS_SATA_VALID_ATAPI;
  } else {
   cts->transport = XPORT_ATA;
   cts->transport_version = XPORT_VERSION_UNSPECIFIED;
   cts->xport_specific.ata.valid = 0;
   cts->xport_specific.ata.mode = d->mode;
   cts->xport_specific.ata.valid |= CTS_ATA_VALID_MODE;
   cts->xport_specific.ata.bytecount = d->bytecount;
   cts->xport_specific.ata.valid |= CTS_ATA_VALID_BYTECOUNT;
   if (cts->type == CTS_TYPE_CURRENT_SETTINGS) {
    cts->xport_specific.ata.caps =
        d->caps & CTS_ATA_CAPS_D;
    if (!(ch->flags & ATA_NO_48BIT_DMA))
     cts->xport_specific.ata.caps |=
         CTS_ATA_CAPS_H_DMA48;
    cts->xport_specific.ata.caps &=
        ch->user[ccb->ccb_h.target_id].caps;
   } else
    cts->xport_specific.ata.caps = d->caps;
   cts->xport_specific.ata.valid |= CTS_ATA_VALID_CAPS;
   cts->xport_specific.ata.atapi = d->atapi;
   cts->xport_specific.ata.valid |= CTS_ATA_VALID_ATAPI;
  }
  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 }
 case 132:
 case 131:
  ata_reinit(dev);
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
  cpi->target_sprt = 0;
  cpi->hba_misc = PIM_SEQSCAN | PIM_UNMAPPED;
  cpi->hba_eng_cnt = 0;
  if (ch->flags & ATA_NO_SLAVE)
   cpi->max_target = 0;
  else
   cpi->max_target = 1;
  cpi->max_lun = 0;
  cpi->initiator_id = 0;
  cpi->bus_id = cam_sim_bus(sim);
  if (ch->flags & ATA_SATA)
   cpi->base_transfer_speed = 150000;
  else
   cpi->base_transfer_speed = 3300;
  strlcpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
  strlcpy(cpi->hba_vid, "ATA", HBA_IDLEN);
  strlcpy(cpi->dev_name, cam_sim_name(sim), DEV_IDLEN);
  cpi->unit_number = cam_sim_unit(sim);
  if (ch->flags & ATA_SATA)
   cpi->transport = XPORT_SATA;
  else
   cpi->transport = XPORT_ATA;
  cpi->transport_version = XPORT_VERSION_UNSPECIFIED;
  cpi->protocol = PROTO_ATA;
  cpi->protocol_version = PROTO_VERSION_UNSPECIFIED;
  cpi->maxio = ch->dma.max_iosize ? ch->dma.max_iosize : DFLTPHYS;
  if (device_get_devclass(device_get_parent(parent)) ==
      devclass_find("pci")) {
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
