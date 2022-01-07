
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int func_code; void* status; int path; } ;
struct TYPE_3__ {void* status; } ;
struct ccb_pathinq {int version_num; int base_transfer_speed; TYPE_1__ ccb_h; int hba_subdevice; int hba_subvendor; int hba_device; int hba_vendor; int maxio; int protocol_version; int protocol; int transport_version; int transport; int unit_number; int dev_name; int hba_vid; int sim_vid; int bus_id; int initiator_id; int max_lun; int max_target; int hba_eng_cnt; int hba_misc; int target_sprt; int hba_inquiry; } ;
union ccb {TYPE_2__ ccb_h; struct ccb_pathinq cpi; } ;
struct cam_sim {int dummy; } ;
struct ahci_enclosure {int dev; } ;
typedef int device_t ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 void* CAM_REQ_CMP ;
 void* CAM_REQ_INVALID ;
 int DEV_IDLEN ;
 int HBA_IDLEN ;
 int MAXPHYS ;
 int PIM_SEQSCAN ;
 int PI_SDTR_ABLE ;
 int PROTO_ATA ;
 int PROTO_VERSION_UNSPECIFIED ;
 int SIM_IDLEN ;
 int XPORT_SATA ;
 int XPORT_VERSION_UNSPECIFIED ;




 int ahci_check_ids (union ccb*) ;
 int ahci_em_begin_transaction (int ,union ccb*) ;
 int ahci_em_reset (int ) ;
 int cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 struct ahci_enclosure* cam_sim_softc (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int device_get_parent (int ) ;
 int pci_get_device (int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;
 int pci_get_vendor (int ) ;
 int strlcpy (int ,char*,int ) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
ahciemaction(struct cam_sim *sim, union ccb *ccb)
{
 device_t dev, parent;
 struct ahci_enclosure *enc;

 CAM_DEBUG(ccb->ccb_h.path, CAM_DEBUG_TRACE,
     ("ahciemaction func_code=%x\n", ccb->ccb_h.func_code));

 enc = cam_sim_softc(sim);
 dev = enc->dev;
 switch (ccb->ccb_h.func_code) {
 case 131:
  if (ahci_check_ids(ccb))
   return;
  ahci_em_begin_transaction(dev, ccb);
  return;
 case 129:
 case 128:
  ahci_em_reset(dev);
  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 case 130:
 {
  struct ccb_pathinq *cpi = &ccb->cpi;

  parent = device_get_parent(dev);
  cpi->version_num = 1;
  cpi->hba_inquiry = PI_SDTR_ABLE;
  cpi->target_sprt = 0;
  cpi->hba_misc = PIM_SEQSCAN;
  cpi->hba_eng_cnt = 0;
  cpi->max_target = 0;
  cpi->max_lun = 0;
  cpi->initiator_id = 0;
  cpi->bus_id = cam_sim_bus(sim);
  cpi->base_transfer_speed = 150000;
  strlcpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
  strlcpy(cpi->hba_vid, "AHCI", HBA_IDLEN);
  strlcpy(cpi->dev_name, cam_sim_name(sim), DEV_IDLEN);
  cpi->unit_number = cam_sim_unit(sim);
  cpi->transport = XPORT_SATA;
  cpi->transport_version = XPORT_VERSION_UNSPECIFIED;
  cpi->protocol = PROTO_ATA;
  cpi->protocol_version = PROTO_VERSION_UNSPECIFIED;
  cpi->maxio = MAXPHYS;
  cpi->hba_vendor = pci_get_vendor(parent);
  cpi->hba_device = pci_get_device(parent);
  cpi->hba_subvendor = pci_get_subvendor(parent);
  cpi->hba_subdevice = pci_get_subdevice(parent);
  cpi->ccb_h.status = CAM_REQ_CMP;
  break;
 }
 default:
  ccb->ccb_h.status = CAM_REQ_INVALID;
  break;
 }
 xpt_done(ccb);
}
