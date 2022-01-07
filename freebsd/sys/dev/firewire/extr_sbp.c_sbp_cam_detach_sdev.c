
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbp_dev {scalar_t__ status; int * path; scalar_t__ freeze; TYPE_1__* target; } ;
struct TYPE_2__ {int sbp; } ;


 int AC_LOST_DEVICE ;
 int CAM_DEV_NOT_THERE ;
 scalar_t__ SBP_DEV_DEAD ;
 scalar_t__ SBP_DEV_RESET ;
 int SBP_LOCK_ASSERT (int ) ;
 int TRUE ;
 int sbp_abort_all_ocbs (struct sbp_dev*,int ) ;
 int xpt_async (int ,int *,int *) ;
 int xpt_free_path (int *) ;
 int xpt_release_devq (int *,scalar_t__,int ) ;

__attribute__((used)) static void
sbp_cam_detach_sdev(struct sbp_dev *sdev)
{
 if (sdev == ((void*)0))
  return;
 if (sdev->status == SBP_DEV_DEAD)
  return;
 if (sdev->status == SBP_DEV_RESET)
  return;
 SBP_LOCK_ASSERT(sdev->target->sbp);
 sbp_abort_all_ocbs(sdev, CAM_DEV_NOT_THERE);
 if (sdev->path) {
  xpt_release_devq(sdev->path,
     sdev->freeze, TRUE);
  sdev->freeze = 0;
  xpt_async(AC_LOST_DEVICE, sdev->path, ((void*)0));
  xpt_free_path(sdev->path);
  sdev->path = ((void*)0);
 }
}
