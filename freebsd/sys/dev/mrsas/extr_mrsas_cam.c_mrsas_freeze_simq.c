
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct mrsas_mpt_cmd {scalar_t__ ccb_ptr; } ;
struct cam_sim {int dummy; } ;


 int CAM_RELEASE_SIMQ ;
 int CAM_REQUEUE_REQ ;
 int xpt_freeze_simq (struct cam_sim*,int) ;

__attribute__((used)) static void
mrsas_freeze_simq(struct mrsas_mpt_cmd *cmd, struct cam_sim *sim)
{
 union ccb *ccb = (union ccb *)(cmd->ccb_ptr);

 xpt_freeze_simq(sim, 1);
 ccb->ccb_h.status |= CAM_RELEASE_SIMQ;
 ccb->ccb_h.status |= CAM_REQUEUE_REQ;
}
