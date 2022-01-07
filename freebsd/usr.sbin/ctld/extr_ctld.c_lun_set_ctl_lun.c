
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lun {int l_ctl_lun; } ;



void
lun_set_ctl_lun(struct lun *lun, uint32_t value)
{

 lun->l_ctl_lun = value;
}
