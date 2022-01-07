
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int command; int sector_count; int lba_low; int* cdb_bytes; scalar_t__ lba_mid_exp; scalar_t__ lba_mid; scalar_t__ sector_count_exp; int flags; } ;
struct ccb_scsiio {int dxfer_len; int cdb_len; TYPE_4__ cdb_io; void* data_ptr; } ;
struct TYPE_5__ {scalar_t__ func_code; int timeout; int recovery_slot; scalar_t__ status; void* flags; int recovery_type; } ;
struct ccb_ataio {int dxfer_len; TYPE_4__ cmd; int * data_ptr; } ;
union ccb {struct ccb_scsiio csio; TYPE_1__ ccb_h; struct ccb_ataio ataio; } ;
struct siis_channel {int recoverycmd; TYPE_3__** hold; int numhslots; } ;
typedef int device_t ;
struct TYPE_6__ {int sense_len; int sense_data; } ;
struct TYPE_7__ {TYPE_2__ csio; TYPE_1__ ccb_h; } ;


 int CAM_ATAIO_48BIT ;
 void* CAM_DIR_IN ;
 scalar_t__ CAM_RESRC_UNAVAIL ;
 scalar_t__ CAM_STATUS_MASK ;
 int M_NOWAIT ;
 int M_SIIS ;
 int RECOVERY_READ_LOG ;
 int RECOVERY_REQUEST_SENSE ;
 int SIIS_MAX_SLOTS ;
 scalar_t__ XPT_ATA_IO ;
 scalar_t__ XPT_SCSI_IO ;
 int bzero (TYPE_4__*,int) ;
 struct siis_channel* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int * malloc (int,int ,int ) ;
 int siis_begin_transaction (int ,union ccb*) ;
 int siis_reset (int ) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 int xpt_done (TYPE_3__*) ;
 int xpt_free_ccb (union ccb*) ;

__attribute__((used)) static void
siis_issue_recovery(device_t dev)
{
 struct siis_channel *ch = device_get_softc(dev);
 union ccb *ccb;
 struct ccb_ataio *ataio;
 struct ccb_scsiio *csio;
 int i;


 for (i = 0; i < SIIS_MAX_SLOTS; i++) {
  if (ch->hold[i])
   break;
 }
 if (i == SIIS_MAX_SLOTS)
  return;
 ccb = xpt_alloc_ccb_nowait();
 if (ccb == ((void*)0)) {
  device_printf(dev, "Unable to allocate recovery command\n");
completeall:

  for (i = 0; i < SIIS_MAX_SLOTS; i++) {
   if (ch->hold[i] == ((void*)0))
    continue;
   ch->hold[i]->ccb_h.status &= ~CAM_STATUS_MASK;
   ch->hold[i]->ccb_h.status |= CAM_RESRC_UNAVAIL;
   xpt_done(ch->hold[i]);
   ch->hold[i] = ((void*)0);
   ch->numhslots--;
  }
  siis_reset(dev);
  return;
 }
 ccb->ccb_h = ch->hold[i]->ccb_h;
 if (ccb->ccb_h.func_code == XPT_ATA_IO) {

  ccb->ccb_h.recovery_type = RECOVERY_READ_LOG;
  ccb->ccb_h.func_code = XPT_ATA_IO;
  ccb->ccb_h.flags = CAM_DIR_IN;
  ccb->ccb_h.timeout = 1000;
  ataio = &ccb->ataio;
  ataio->data_ptr = malloc(512, M_SIIS, M_NOWAIT);
  if (ataio->data_ptr == ((void*)0)) {
   xpt_free_ccb(ccb);
   device_printf(dev,
       "Unable to allocate memory for READ LOG command\n");
   goto completeall;
  }
  ataio->dxfer_len = 512;
  bzero(&ataio->cmd, sizeof(ataio->cmd));
  ataio->cmd.flags = CAM_ATAIO_48BIT;
  ataio->cmd.command = 0x2F;
  ataio->cmd.sector_count = 1;
  ataio->cmd.sector_count_exp = 0;
  ataio->cmd.lba_low = 0x10;
  ataio->cmd.lba_mid = 0;
  ataio->cmd.lba_mid_exp = 0;
 } else {

  ccb->ccb_h.recovery_type = RECOVERY_REQUEST_SENSE;
  ccb->ccb_h.recovery_slot = i;
  ccb->ccb_h.func_code = XPT_SCSI_IO;
  ccb->ccb_h.flags = CAM_DIR_IN;
  ccb->ccb_h.status = 0;
  ccb->ccb_h.timeout = 1000;
  csio = &ccb->csio;
  csio->data_ptr = (void *)&ch->hold[i]->csio.sense_data;
  csio->dxfer_len = ch->hold[i]->csio.sense_len;
  csio->cdb_len = 6;
  bzero(&csio->cdb_io, sizeof(csio->cdb_io));
  csio->cdb_io.cdb_bytes[0] = 0x03;
  csio->cdb_io.cdb_bytes[4] = csio->dxfer_len;
 }
 ch->recoverycmd = 1;
 siis_begin_transaction(dev, ccb);
}
