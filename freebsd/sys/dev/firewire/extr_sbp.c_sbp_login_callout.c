
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbp_dev {TYPE_1__* target; } ;
struct TYPE_2__ {int sbp; } ;


 int ORB_FUN_LGI ;
 int SBP_LOCK_ASSERT (int ) ;
 int sbp_mgm_orb (struct sbp_dev*,int ,int *) ;

__attribute__((used)) static void
sbp_login_callout(void *arg)
{
 struct sbp_dev *sdev = (struct sbp_dev *)arg;
 SBP_LOCK_ASSERT(sdev->target->sbp);
 sbp_mgm_orb(sdev, ORB_FUN_LGI, ((void*)0));
}
