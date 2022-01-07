
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; scalar_t__ status; int path; int * ccb_pvscsi_sc; int * ccb_pvscsi_hcb; } ;
struct TYPE_3__ {int sense_len; int sense_data; scalar_t__ resid; scalar_t__ dxfer_len; scalar_t__ scsi_status; } ;
union ccb {TYPE_2__ ccb_h; TYPE_1__ csio; } ;
typedef scalar_t__ uint32_t ;
struct pvscsi_softc {scalar_t__ frozen; int dev; int buffer_dmat; } ;
struct pvscsi_ring_cmp_desc {scalar_t__ host_status; scalar_t__ scsi_status; scalar_t__ context; int sense_len; scalar_t__ data_len; } ;
struct pvscsi_hcb {int sense_buffer; int dma_map; union ccb* ccb; int callout; } ;
typedef int bus_dmasync_op_t ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 scalar_t__ CAM_AUTOSENSE_FAIL ;
 scalar_t__ CAM_AUTOSNS_VALID ;
 scalar_t__ CAM_DATA_RUN_ERR ;
 scalar_t__ CAM_DEV_QFRZN ;
 int CAM_DIR_IN ;
 int CAM_DIR_MASK ;
 int CAM_DIR_NONE ;
 scalar_t__ CAM_NO_HBA ;
 scalar_t__ CAM_RELEASE_SIMQ ;
 scalar_t__ CAM_REQUEUE_REQ ;
 scalar_t__ CAM_REQ_ABORTED ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_REQ_CMP_ERR ;
 scalar_t__ CAM_SCSI_BUS_RESET ;
 scalar_t__ CAM_SCSI_STATUS_ERROR ;
 scalar_t__ CAM_SEL_TIMEOUT ;
 scalar_t__ CAM_SEQUENCE_FAIL ;
 scalar_t__ CAM_SIM_QUEUED ;
 scalar_t__ CAM_STATUS_MASK ;
 scalar_t__ CAM_UNCOR_PARITY ;
 scalar_t__ CAM_UNEXP_BUSFREE ;
 int DEBUG_PRINTF (int,int ,char*,...) ;
 int MIN (int ,int ) ;






 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int device_printf (int ,char*,scalar_t__) ;
 int memcpy (int *,int ,int ) ;
 int memset (int *,int ,int) ;
 struct pvscsi_hcb* pvscsi_context_to_hcb (struct pvscsi_softc*,scalar_t__) ;
 int pvscsi_hcb_put (struct pvscsi_softc*,struct pvscsi_hcb*) ;
 int xpt_done (union ccb*) ;
 int xpt_freeze_devq (int ,int) ;

__attribute__((used)) static void
pvscsi_process_completion(struct pvscsi_softc *sc,
    struct pvscsi_ring_cmp_desc *e)
{
 struct pvscsi_hcb *hcb;
 union ccb *ccb;
 uint32_t status;
 uint32_t btstat;
 uint32_t sdstat;
 bus_dmasync_op_t op;

 hcb = pvscsi_context_to_hcb(sc, e->context);

 callout_stop(&hcb->callout);

 ccb = hcb->ccb;

 btstat = e->host_status;
 sdstat = e->scsi_status;

 ccb->csio.scsi_status = sdstat;
 ccb->csio.resid = ccb->csio.dxfer_len - e->data_len;

 if ((ccb->ccb_h.flags & CAM_DIR_MASK) != CAM_DIR_NONE) {
  if ((ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN) {
   op = BUS_DMASYNC_POSTREAD;
  } else {
   op = BUS_DMASYNC_POSTWRITE;
  }
  bus_dmamap_sync(sc->buffer_dmat, hcb->dma_map, op);
  bus_dmamap_unload(sc->buffer_dmat, hcb->dma_map);
 }

 if (btstat == 135 && sdstat == 130) {
  DEBUG_PRINTF(3, sc->dev,
      "completing command context %llx success\n",
      (unsigned long long)e->context);
  ccb->csio.resid = 0;
  status = CAM_REQ_CMP;
 } else {
  switch (btstat) {
  case 135:
  case 144:
  case 143:
   switch (sdstat) {
   case 130:
    ccb->csio.resid = 0;
    status = CAM_REQ_CMP;
    break;
   case 132:
    status = CAM_SCSI_STATUS_ERROR;

    if (ccb->csio.sense_len != 0) {
     status |= CAM_AUTOSNS_VALID;

     memset(&ccb->csio.sense_data, 0,
         sizeof(ccb->csio.sense_data));
     memcpy(&ccb->csio.sense_data,
         hcb->sense_buffer,
         MIN(ccb->csio.sense_len,
      e->sense_len));
    }
    break;
   case 133:
   case 129:
    status = CAM_REQUEUE_REQ;
    break;
   case 131:
   case 128:
    status = CAM_REQ_ABORTED;
    break;
   default:
    DEBUG_PRINTF(1, sc->dev,
        "ccb: %p sdstat=0x%x\n", ccb, sdstat);
    status = CAM_SCSI_STATUS_ERROR;
    break;
   }
   break;
  case 138:
   status = CAM_SEL_TIMEOUT;
   break;
  case 152:
  case 151:
   status = CAM_DATA_RUN_ERR;
   break;
  case 156:
  case 147:
   status = CAM_REQUEUE_REQ;
   break;
  case 141:
  case 136:
  case 140:
  case 153:
   status = CAM_SCSI_BUS_RESET;
   break;
  case 139:
   status = CAM_UNCOR_PARITY;
   break;
  case 154:
   status = CAM_UNEXP_BUSFREE;
   break;
  case 145:
   status = CAM_SEQUENCE_FAIL;
   break;
  case 137:
   status = CAM_AUTOSENSE_FAIL;
   break;
  case 142:
  case 134:
  case 150:
  case 155:
  case 146:
   status = CAM_REQ_CMP_ERR;
   break;
  case 148:
  case 149:
   status = CAM_NO_HBA;
   break;
  default:
   device_printf(sc->dev, "unknown hba status: 0x%x\n",
       btstat);
   status = CAM_NO_HBA;
   break;
  }

  DEBUG_PRINTF(3, sc->dev,
      "completing command context %llx btstat %x sdstat %x - status %x\n",
      (unsigned long long)e->context, btstat, sdstat, status);
 }

 ccb->ccb_h.ccb_pvscsi_hcb = ((void*)0);
 ccb->ccb_h.ccb_pvscsi_sc = ((void*)0);
 pvscsi_hcb_put(sc, hcb);

 ccb->ccb_h.status =
     status | (ccb->ccb_h.status & ~(CAM_STATUS_MASK | CAM_SIM_QUEUED));

 if (sc->frozen) {
  ccb->ccb_h.status |= CAM_RELEASE_SIMQ;
  sc->frozen = 0;
 }

 if (status != CAM_REQ_CMP) {
  ccb->ccb_h.status |= CAM_DEV_QFRZN;
  xpt_freeze_devq(ccb->ccb_h.path, 1);
 }
 xpt_done(ccb);
}
