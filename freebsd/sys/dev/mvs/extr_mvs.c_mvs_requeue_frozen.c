
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct mvs_channel {union ccb* frozen; } ;
typedef int device_t ;


 int CAM_DEV_QFRZN ;
 int CAM_RELEASE_SIMQ ;
 int CAM_REQUEUE_REQ ;
 struct mvs_channel* device_get_softc (int ) ;
 int xpt_done (union ccb*) ;
 int xpt_freeze_devq (int ,int) ;

__attribute__((used)) static void
mvs_requeue_frozen(device_t dev)
{
 struct mvs_channel *ch = device_get_softc(dev);
 union ccb *fccb = ch->frozen;

 if (fccb) {
  ch->frozen = ((void*)0);
  fccb->ccb_h.status = CAM_REQUEUE_REQ | CAM_RELEASE_SIMQ;
  if (!(fccb->ccb_h.status & CAM_DEV_QFRZN)) {
   xpt_freeze_devq(fccb->ccb_h.path, 1);
   fccb->ccb_h.status |= CAM_DEV_QFRZN;
  }
  xpt_done(fccb);
 }
}
