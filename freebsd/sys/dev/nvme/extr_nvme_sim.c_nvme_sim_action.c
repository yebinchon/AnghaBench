
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


struct TYPE_16__ {int func_code; void* status; int path; } ;
struct TYPE_15__ {void* status; } ;
struct ccb_trans_settings_nvme {int valid; int speed; int lanes; int max_speed; int max_lanes; void* spec; } ;
struct TYPE_14__ {struct ccb_trans_settings_nvme nvme; } ;
struct TYPE_13__ {struct ccb_trans_settings_nvme nvme; } ;
struct ccb_trans_settings {TYPE_7__ ccb_h; void* protocol; void* transport; TYPE_6__ proto_specific; TYPE_5__ xport_specific; } ;
struct TYPE_12__ {void* status; } ;
struct TYPE_10__ {int extra; int function; int slot; int bus; int domain; int nsid; } ;
struct TYPE_11__ {TYPE_2__ nvme; } ;
struct ccb_pathinq {int version_num; int hba_misc; TYPE_4__ ccb_h; TYPE_3__ xport_specific; void* protocol_version; void* protocol; void* transport_version; void* transport; int unit_number; int dev_name; int hba_vid; int sim_vid; int base_transfer_speed; int bus_id; int initiator_id; int maxio; int max_lun; int max_target; int hba_eng_cnt; int target_sprt; int hba_inquiry; } ;
union ccb {TYPE_8__ ccb_h; struct ccb_trans_settings cts; struct ccb_pathinq cpi; } ;
typedef int uint32_t ;
struct TYPE_9__ {int nn; } ;
struct nvme_controller {int dev; int max_xfer_size; TYPE_1__ cdata; } ;
struct cam_sim {int dummy; } ;
typedef int device_t ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 void* CAM_REQ_CMP ;
 void* CAM_REQ_INVALID ;
 int CTS_NVME_VALID_LINK ;
 int CTS_NVME_VALID_SPEC ;
 int DEV_IDLEN ;
 int HBA_IDLEN ;
 int PCIEM_FLAGS_TYPE ;
 int PCIEM_LINK_CAP_MAX_SPEED ;
 int PCIEM_LINK_CAP_MAX_WIDTH ;
 int PCIEM_LINK_STA_SPEED ;
 int PCIEM_LINK_STA_WIDTH ;
 int PCIEM_TYPE_ENDPOINT ;
 int PCIER_FLAGS ;
 int PCIER_LINK_CAP ;
 int PCIER_LINK_STA ;
 int PIM_NOSCAN ;
 int PIM_UNMAPPED ;
 void* PROTO_NVME ;
 int SIM_IDLEN ;
 void* XPORT_NVME ;
 int cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int nvme_link_kBps (struct nvme_controller*) ;
 void* nvme_mmio_read_4 (struct nvme_controller*,int ) ;
 int nvme_sim_nvmeio (struct cam_sim*,union ccb*) ;
 int pci_get_bus (int ) ;
 int pci_get_domain (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 int pcie_read_config (int ,int ,int) ;
 struct nvme_controller* sim2ctrlr (struct cam_sim*) ;
 int strlcpy (int ,char*,int ) ;
 int vs ;
 int xpt_done (union ccb*) ;
 int xpt_path_lun_id (int ) ;

__attribute__((used)) static void
nvme_sim_action(struct cam_sim *sim, union ccb *ccb)
{
 struct nvme_controller *ctrlr;

 CAM_DEBUG(ccb->ccb_h.path, CAM_DEBUG_TRACE,
     ("nvme_sim_action: func= %#x\n",
  ccb->ccb_h.func_code));

 ctrlr = sim2ctrlr(sim);

 switch (ccb->ccb_h.func_code) {
 case 136:





 case 137:
  ccb->ccb_h.status = CAM_REQ_INVALID;
  break;
 case 129:




  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 case 132:
 {
  struct ccb_pathinq *cpi = &ccb->cpi;
  device_t dev = ctrlr->dev;







  cpi->version_num = 1;
  cpi->hba_inquiry = 0;
  cpi->target_sprt = 0;
  cpi->hba_misc = PIM_UNMAPPED | PIM_NOSCAN;
  cpi->hba_eng_cnt = 0;
  cpi->max_target = 0;
  cpi->max_lun = ctrlr->cdata.nn;
  cpi->maxio = ctrlr->max_xfer_size;
  cpi->initiator_id = 0;
  cpi->bus_id = cam_sim_bus(sim);
  cpi->base_transfer_speed = nvme_link_kBps(ctrlr);
  strlcpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
  strlcpy(cpi->hba_vid, "NVMe", HBA_IDLEN);
  strlcpy(cpi->dev_name, cam_sim_name(sim), DEV_IDLEN);
  cpi->unit_number = cam_sim_unit(sim);
  cpi->transport = XPORT_NVME;
  cpi->transport_version = nvme_mmio_read_4(ctrlr, vs);
  cpi->protocol = PROTO_NVME;
  cpi->protocol_version = nvme_mmio_read_4(ctrlr, vs);
  cpi->xport_specific.nvme.nsid = xpt_path_lun_id(ccb->ccb_h.path);
  cpi->xport_specific.nvme.domain = pci_get_domain(dev);
  cpi->xport_specific.nvme.bus = pci_get_bus(dev);
  cpi->xport_specific.nvme.slot = pci_get_slot(dev);
  cpi->xport_specific.nvme.function = pci_get_function(dev);
  cpi->xport_specific.nvme.extra = 0;
  cpi->ccb_h.status = CAM_REQ_CMP;
  break;
 }
 case 135:
 {
  struct ccb_trans_settings *cts;
  struct ccb_trans_settings_nvme *nvmep;
  struct ccb_trans_settings_nvme *nvmex;
  device_t dev;
  uint32_t status, caps, flags;

  dev = ctrlr->dev;
  cts = &ccb->cts;
  nvmex = &cts->xport_specific.nvme;
  nvmep = &cts->proto_specific.nvme;

  status = pcie_read_config(dev, PCIER_LINK_STA, 2);
  caps = pcie_read_config(dev, PCIER_LINK_CAP, 2);
  flags = pcie_read_config(dev, PCIER_FLAGS, 2);
  nvmex->spec = nvme_mmio_read_4(ctrlr, vs);
  nvmex->valid = CTS_NVME_VALID_SPEC;
  if ((flags & PCIEM_FLAGS_TYPE) == PCIEM_TYPE_ENDPOINT) {
   nvmex->valid |= CTS_NVME_VALID_LINK;
   nvmex->speed = status & PCIEM_LINK_STA_SPEED;
   nvmex->lanes = (status & PCIEM_LINK_STA_WIDTH) >> 4;
   nvmex->max_speed = caps & PCIEM_LINK_CAP_MAX_SPEED;
   nvmex->max_lanes = (caps & PCIEM_LINK_CAP_MAX_WIDTH) >> 4;
  }


  nvmep->valid = 1;
  nvmep->spec = nvmex->spec;

  cts->transport = XPORT_NVME;
  cts->protocol = PROTO_NVME;
  cts->ccb_h.status = CAM_REQ_CMP;
  break;
 }
 case 128:





 case 130:
 case 131:





  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 case 133:
 case 134:
  nvme_sim_nvmeio(sim, ccb);
  return;
 default:
  ccb->ccb_h.status = CAM_REQ_INVALID;
  break;
 }
 xpt_done(ccb);
}
