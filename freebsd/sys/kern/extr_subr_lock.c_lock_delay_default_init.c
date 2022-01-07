
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_delay_config {int base; int max; } ;


 int lock_roundup_2 (int ) ;
 int mp_ncpus ;

void
lock_delay_default_init(struct lock_delay_config *lc)
{

 lc->base = 1;
 lc->max = lock_roundup_2(mp_ncpus) * 256;
 if (lc->max > 32678)
  lc->max = 32678;
}
