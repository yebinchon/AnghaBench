
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lun {size_t l_blocksize; } ;



void
lun_set_blocksize(struct lun *lun, size_t value)
{

 lun->l_blocksize = value;
}
