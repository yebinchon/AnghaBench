
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ mtx_trylock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int tc_setclock_mtx ;
 int tc_tick ;
 int tc_windup (int *) ;

void
tc_ticktock(int cnt)
{
 static int count;

 if (mtx_trylock_spin(&tc_setclock_mtx)) {
  count += cnt;
  if (count >= tc_tick) {
   count = 0;
   tc_windup(((void*)0));
  }
  mtx_unlock_spin(&tc_setclock_mtx);
 }
}
