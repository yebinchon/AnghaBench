
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbp_dev {TYPE_1__* target; int status; } ;
struct TYPE_2__ {int scan_callout; } ;


 int SBP_DEV_PROBE ;
 int SBT_1MS ;
 int callout_reset_sbt (int *,int,int ,int ,void*,int ) ;
 int sbp_cam_scan_target ;
 int scan_delay ;

__attribute__((used)) static __inline void
sbp_scan_dev(struct sbp_dev *sdev)
{
 sdev->status = SBP_DEV_PROBE;
 callout_reset_sbt(&sdev->target->scan_callout, SBT_1MS * scan_delay, 0,
     sbp_cam_scan_target, (void *)sdev->target, 0);
}
