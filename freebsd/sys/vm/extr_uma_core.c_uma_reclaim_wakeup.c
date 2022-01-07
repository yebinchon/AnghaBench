
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_fetchadd_int (int *,int) ;
 int uma_reclaim ;
 int uma_reclaim_needed ;
 int wakeup (int ) ;

void
uma_reclaim_wakeup(void)
{

 if (atomic_fetchadd_int(&uma_reclaim_needed, 1) == 0)
  wakeup(uma_reclaim);
}
