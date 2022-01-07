
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ current_pages; } ;


 int balloon_mutex ;
 TYPE_1__ bs ;
 scalar_t__ current_target () ;
 scalar_t__ decrease_reservation (long) ;
 int hz ;
 scalar_t__ increase_reservation (long) ;
 int msleep (void (*) (void*),int *,int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
balloon_process(void *unused)
{
 int need_sleep = 0;
 long credit;

 mtx_lock(&balloon_mutex);
 for (;;) {
  int sleep_time;

  do {
   credit = current_target() - bs.current_pages;
   if (credit > 0)
    need_sleep = (increase_reservation(credit) != 0);
   if (credit < 0)
    need_sleep = (decrease_reservation(-credit) != 0);

  } while ((credit != 0) && !need_sleep);


  if (current_target() != bs.current_pages)
   sleep_time = hz;
  else
   sleep_time = 0;

  msleep(balloon_process, &balloon_mutex, 0, "balloon",
         sleep_time);
 }
 mtx_unlock(&balloon_mutex);
}
