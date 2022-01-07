
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
struct TYPE_8__ {TYPE_3__ cmd; } ;
struct TYPE_6__ {int target_id; scalar_t__ func_code; } ;
union ccb {TYPE_4__ ataio; TYPE_2__ ccb_h; } ;
struct ahci_channel {int oslots; scalar_t__* numrslotspd; scalar_t__* numtslotspd; scalar_t__ numrslots; scalar_t__ numtslots; int taggedtarget; scalar_t__ aslots; scalar_t__ fbs_enabled; TYPE_1__* curr; } ;
struct TYPE_5__ {int tags; } ;


 int CAM_ATAIO_CONTROL ;
 int CAM_ATAIO_FPDMA ;
 int CAM_ATAIO_NEEDRESULT ;
 scalar_t__ XPT_ATA_IO ;

__attribute__((used)) static int
ahci_check_collision(struct ahci_channel *ch, union ccb *ccb)
{
 int t = ccb->ccb_h.target_id;

 if ((ccb->ccb_h.func_code == XPT_ATA_IO) &&
     (ccb->ataio.cmd.flags & CAM_ATAIO_FPDMA)) {

  if (((~ch->oslots) & (0xffffffff >> (32 -
      ch->curr[t].tags))) == 0)
   return (1);

  if (ch->fbs_enabled) {

   if (ch->numrslotspd[t] != 0 && ch->numtslotspd[t] == 0)
    return (1);
  } else {

   if (ch->numrslots != 0 && ch->numtslots == 0)
    return (1);

   if (ch->numtslots != 0 &&
       ch->taggedtarget != ccb->ccb_h.target_id)
    return (1);
  }
 } else {

  if (ch->fbs_enabled) {

   if (ch->numrslotspd[t] != 0 && ch->numtslotspd[t] != 0)
    return (1);
  } else {

   if (ch->numrslots != 0 && ch->numtslots != 0)
    return (1);
  }
 }
 if ((ccb->ccb_h.func_code == XPT_ATA_IO) &&
     (ccb->ataio.cmd.flags & (CAM_ATAIO_CONTROL | CAM_ATAIO_NEEDRESULT))) {

  if (ch->numrslots != 0)
   return (1);
 }

       if (ch->aslots != 0)
               return (1);
 return (0);
}
