
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
struct TYPE_6__ {scalar_t__ func_code; size_t target_id; } ;
union ccb {TYPE_4__ ataio; TYPE_2__ ccb_h; } ;
struct siis_channel {int oslots; scalar_t__ numrslots; scalar_t__ aslots; TYPE_1__* curr; int mtx; } ;
typedef int device_t ;
struct TYPE_5__ {int tags; } ;


 int CAM_ATAIO_CONTROL ;
 int CAM_ATAIO_FPDMA ;
 int CAM_ATAIO_NEEDRESULT ;
 int MA_OWNED ;
 scalar_t__ XPT_ATA_IO ;
 struct siis_channel* device_get_softc (int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
siis_check_collision(device_t dev, union ccb *ccb)
{
 struct siis_channel *ch = device_get_softc(dev);

 mtx_assert(&ch->mtx, MA_OWNED);
 if ((ccb->ccb_h.func_code == XPT_ATA_IO) &&
     (ccb->ataio.cmd.flags & CAM_ATAIO_FPDMA)) {

  if (((~ch->oslots) & (0x7fffffff >> (31 -
      ch->curr[ccb->ccb_h.target_id].tags))) == 0)
   return (1);
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
