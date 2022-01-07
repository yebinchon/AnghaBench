
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int uint8_t ;
struct umass_softc {int (* sc_transform ) (struct umass_softc*,int*,int) ;} ;


 int CAM_DEV_QFRZN ;
 int CAM_REQ_CMP ;
 int CAM_REQ_INVALID ;
 int stub1 (struct umass_softc*,int*,int) ;
 int xpt_done (union ccb*) ;
 int xpt_freeze_devq (int ,int) ;

__attribute__((used)) static uint8_t
umass_std_transform(struct umass_softc *sc, union ccb *ccb,
    uint8_t *cmd, uint8_t cmdlen)
{
 uint8_t retval;

 retval = (sc->sc_transform) (sc, cmd, cmdlen);

 if (retval == 2) {
  ccb->ccb_h.status = CAM_REQ_CMP;
  xpt_done(ccb);
  return (0);
 } else if (retval == 0) {
  xpt_freeze_devq(ccb->ccb_h.path, 1);
  ccb->ccb_h.status = CAM_REQ_INVALID | CAM_DEV_QFRZN;
  xpt_done(ccb);
  return (0);
 }

 return (1);
}
