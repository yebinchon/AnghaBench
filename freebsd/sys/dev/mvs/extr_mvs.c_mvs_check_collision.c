
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_2__ cmd; } ;
struct TYPE_4__ {scalar_t__ func_code; scalar_t__ target_id; } ;
union ccb {TYPE_3__ ataio; TYPE_1__ ccb_h; } ;
struct mvs_channel {scalar_t__ numdslots; scalar_t__ numpslots; scalar_t__ numtslots; scalar_t__ taggedtarget; scalar_t__ numrslots; scalar_t__ aslots; int fbs_enabled; } ;
typedef int device_t ;


 int CAM_ATAIO_CONTROL ;
 int CAM_ATAIO_DMA ;
 int CAM_ATAIO_FPDMA ;
 int CAM_ATAIO_NEEDRESULT ;
 scalar_t__ XPT_ATA_IO ;
 struct mvs_channel* device_get_softc (int ) ;

__attribute__((used)) static int
mvs_check_collision(device_t dev, union ccb *ccb)
{
 struct mvs_channel *ch = device_get_softc(dev);

 if (ccb->ccb_h.func_code == XPT_ATA_IO) {

  if (ccb->ataio.cmd.flags & CAM_ATAIO_FPDMA) {

   if (ch->numdslots != 0)
    return (1);

   if (ch->numpslots != 0)
    return (1);

   if (!ch->fbs_enabled) {

    if (ch->numtslots != 0 &&
        ch->taggedtarget != ccb->ccb_h.target_id)
     return (1);
   }

  } else if (ccb->ataio.cmd.flags & CAM_ATAIO_DMA) {

   if (ch->numtslots != 0)
    return (1);

   if (ch->numpslots != 0)
    return (1);

  } else {

   if (ch->numrslots != 0)
    return (1);
  }
  if (ccb->ataio.cmd.flags & (CAM_ATAIO_CONTROL | CAM_ATAIO_NEEDRESULT)) {

   if (ch->numrslots != 0)
    return (1);
  }
 } else {

  if (ch->numrslots != 0)
   return (1);
 }

 if (ch->aslots != 0)
  return (1);
 return (0);
}
