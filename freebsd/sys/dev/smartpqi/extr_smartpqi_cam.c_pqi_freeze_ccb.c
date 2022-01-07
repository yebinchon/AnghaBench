
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int path; } ;
union ccb {TYPE_1__ ccb_h; } ;


 int CAM_DEV_QFRZN ;
 int xpt_freeze_devq (int ,int) ;

__attribute__((used)) static void
pqi_freeze_ccb(union ccb *ccb)
{
 if ((ccb->ccb_h.status & CAM_DEV_QFRZN) == 0) {
  ccb->ccb_h.status |= CAM_DEV_QFRZN;
  xpt_freeze_devq(ccb->ccb_h.path, 1);
 }
}
