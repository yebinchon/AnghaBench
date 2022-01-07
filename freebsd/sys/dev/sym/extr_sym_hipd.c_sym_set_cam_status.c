
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int cam_status ;


 int CAM_STATUS_MASK ;

__attribute__((used)) static __inline void sym_set_cam_status(union ccb *ccb, cam_status status)
{
 ccb->ccb_h.status &= ~CAM_STATUS_MASK;
 ccb->ccb_h.status |= status;
}
