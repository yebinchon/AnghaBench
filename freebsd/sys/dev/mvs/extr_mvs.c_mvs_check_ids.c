
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ata_flags; } ;
struct TYPE_4__ {int target_id; scalar_t__ target_lun; scalar_t__ func_code; int status; } ;
union ccb {TYPE_1__ ataio; TYPE_2__ ccb_h; } ;
struct mvs_channel {int quirks; } ;
typedef int device_t ;


 int ATA_FLAG_AUX ;
 int CAM_LUN_INVALID ;
 int CAM_TID_INVALID ;
 int KASSERT (int,char*) ;
 int MVS_Q_GENI ;
 scalar_t__ XPT_ATA_IO ;
 struct mvs_channel* device_get_softc (int ) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static int
mvs_check_ids(device_t dev, union ccb *ccb)
{
 struct mvs_channel *ch = device_get_softc(dev);

 if (ccb->ccb_h.target_id > ((ch->quirks & MVS_Q_GENI) ? 0 : 15)) {
  ccb->ccb_h.status = CAM_TID_INVALID;
  xpt_done(ccb);
  return (-1);
 }
 if (ccb->ccb_h.target_lun != 0) {
  ccb->ccb_h.status = CAM_LUN_INVALID;
  xpt_done(ccb);
  return (-1);
 }



 KASSERT(ccb->ccb_h.func_code != XPT_ATA_IO ||
     ((ccb->ataio.ata_flags & ATA_FLAG_AUX) == 0),
     ("AUX register unsupported"));
 return (0);
}
