
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp_target {int num_lun; struct sbp_dev** luns; int sbp; } ;
struct sbp_dev {scalar_t__ status; int freeze; int path; struct sbp_target* target; } ;


 int CAM_CMD_TIMEOUT ;
 int ORB_FUN_RST ;
 scalar_t__ SBP_DEV_DEAD ;
 scalar_t__ SBP_DEV_LOGIN ;
 scalar_t__ SBP_DEV_RESET ;
 int SBP_LOCK_ASSERT (int ) ;
 int printf (char*) ;
 int sbp_abort_all_ocbs (struct sbp_dev*,int ) ;
 int sbp_mgm_orb (struct sbp_dev*,int ,int *) ;
 int sbp_reset_start (struct sbp_dev*) ;
 int xpt_freeze_devq (int ,int) ;

__attribute__((used)) static void
sbp_target_reset(struct sbp_dev *sdev, int method)
{
 int i;
 struct sbp_target *target = sdev->target;
 struct sbp_dev *tsdev;

 SBP_LOCK_ASSERT(target->sbp);
 for (i = 0; i < target->num_lun; i++) {
  tsdev = target->luns[i];
  if (tsdev == ((void*)0))
   continue;
  if (tsdev->status == SBP_DEV_DEAD)
   continue;
  if (tsdev->status == SBP_DEV_RESET)
   continue;
  xpt_freeze_devq(tsdev->path, 1);
  tsdev->freeze++;
  sbp_abort_all_ocbs(tsdev, CAM_CMD_TIMEOUT);
  if (method == 2)
   tsdev->status = SBP_DEV_LOGIN;
 }
 switch (method) {
 case 1:
  printf("target reset\n");
  sbp_mgm_orb(sdev, ORB_FUN_RST, ((void*)0));
  break;
 case 2:
  printf("reset start\n");
  sbp_reset_start(sdev);
  break;
 }

}
