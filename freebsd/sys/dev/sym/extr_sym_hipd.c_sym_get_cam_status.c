
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
union ccb {TYPE_1__ ccb_h; } ;


 int CAM_STATUS_MASK ;

__attribute__((used)) static __inline int sym_get_cam_status(union ccb *ccb)
{
 return ccb->ccb_h.status & CAM_STATUS_MASK;
}
