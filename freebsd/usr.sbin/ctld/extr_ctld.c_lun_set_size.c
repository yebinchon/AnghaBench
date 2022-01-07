
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lun {size_t l_size; } ;



void
lun_set_size(struct lun *lun, size_t value)
{

 lun->l_size = value;
}
