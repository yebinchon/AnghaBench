
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct ata_request {int flags; int status; scalar_t__ result; union ccb* ccb; } ;
struct ata_channel {scalar_t__ requestsense; } ;
typedef int device_t ;


 int ATA_R_TIMEOUT ;
 int ATA_S_ERROR ;
 int CAM_AUTOSENSE_FAIL ;
 int CAM_AUTOSNS_VALID ;
 int CAM_STATUS_MASK ;
 int ata_reinit (int ) ;
 struct ata_channel* device_get_softc (int ) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
ata_cam_process_sense(device_t dev, struct ata_request *request)
{
 struct ata_channel *ch = device_get_softc(dev);
 union ccb *ccb = request->ccb;
 int fatalerr = 0;

 ch->requestsense = 0;

 if (request->flags & ATA_R_TIMEOUT)
  fatalerr = 1;
 if ((request->flags & ATA_R_TIMEOUT) == 0 &&
     (request->status & ATA_S_ERROR) == 0 &&
     request->result == 0) {
  ccb->ccb_h.status |= CAM_AUTOSNS_VALID;
 } else {
  ccb->ccb_h.status &= ~CAM_STATUS_MASK;
  ccb->ccb_h.status |= CAM_AUTOSENSE_FAIL;
 }

 xpt_done(ccb);

 if (fatalerr)
  ata_reinit(dev);
}
