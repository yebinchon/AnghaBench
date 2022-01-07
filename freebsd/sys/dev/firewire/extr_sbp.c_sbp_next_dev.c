
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp_target {int num_lun; struct sbp_dev** luns; } ;
struct sbp_dev {scalar_t__ status; } ;


 scalar_t__ SBP_DEV_PROBE ;

__attribute__((used)) static struct sbp_dev *
sbp_next_dev(struct sbp_target *target, int lun)
{
 struct sbp_dev **sdevp;
 int i;

 for (i = lun, sdevp = &target->luns[lun]; i < target->num_lun;
     i++, sdevp++)
  if (*sdevp != ((void*)0) && (*sdevp)->status == SBP_DEV_PROBE)
   return (*sdevp);
 return (((void*)0));
}
