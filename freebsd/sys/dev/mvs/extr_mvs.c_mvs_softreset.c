
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int target_id; int timeout; int status; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int uint8_t ;
struct mvs_channel {int r_mem; scalar_t__ pm_present; } ;
typedef int device_t ;


 int ATA_A_RESET ;
 int ATA_CONTROL ;
 int ATA_OUTB (int ,int ,int) ;
 int ATA_S_BUSY ;
 int ATA_S_DRQ ;
 int ATA_S_ERROR ;
 int CAM_ATA_STATUS_ERROR ;
 int CAM_CMD_TIMEOUT ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 int DELAY (int) ;
 int MVS_EDMA_OFF ;
 int SATA_SATAICTL ;
 int SATA_SATAICTL_PMPTX_SHIFT ;
 struct mvs_channel* device_get_softc (int ) ;
 int mvs_getstatus (int ,int ) ;
 int mvs_set_edma_mode (int ,int ) ;
 int mvs_tfd_read (int ,union ccb*) ;
 int mvs_wait (int ,int ,int,int ) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
mvs_softreset(device_t dev, union ccb *ccb)
{
 struct mvs_channel *ch = device_get_softc(dev);
 int port = ccb->ccb_h.target_id & 0x0f;
 int i, stuck;
 uint8_t status;

 mvs_set_edma_mode(dev, MVS_EDMA_OFF);
 ATA_OUTB(ch->r_mem, SATA_SATAICTL, port << SATA_SATAICTL_PMPTX_SHIFT);
 ATA_OUTB(ch->r_mem, ATA_CONTROL, ATA_A_RESET);
 DELAY(10000);
 ATA_OUTB(ch->r_mem, ATA_CONTROL, 0);
 ccb->ccb_h.status &= ~CAM_STATUS_MASK;

 if ((i = mvs_wait(dev, 0, ATA_S_BUSY, ccb->ccb_h.timeout)) < 0) {
  ccb->ccb_h.status |= CAM_CMD_TIMEOUT;
  stuck = 1;
 } else {
  status = mvs_getstatus(dev, 0);
  if (status & ATA_S_ERROR)
   ccb->ccb_h.status |= CAM_ATA_STATUS_ERROR;
  else
   ccb->ccb_h.status |= CAM_REQ_CMP;
  if (status & ATA_S_DRQ)
   stuck = 1;
  else
   stuck = 0;
 }
 mvs_tfd_read(dev, ccb);





 if (stuck && ch->pm_present && port != 15) {
  ATA_OUTB(ch->r_mem, SATA_SATAICTL,
      15 << SATA_SATAICTL_PMPTX_SHIFT);
  ATA_OUTB(ch->r_mem, ATA_CONTROL, ATA_A_RESET);
  DELAY(10000);
  ATA_OUTB(ch->r_mem, ATA_CONTROL, 0);
  mvs_wait(dev, 0, ATA_S_BUSY | ATA_S_DRQ, ccb->ccb_h.timeout);
 }

 xpt_done(ccb);
}
