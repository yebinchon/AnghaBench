
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_2__ {int tv_usec; int tv_sec; } ;


 int hz ;
 int microuptime (struct timeval*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int netisr_poll_scheduled ;
 int netisr_pollmore_scheduled ;
 int netisr_sched_poll () ;
 scalar_t__ pending_polls ;
 int phase ;
 int poll_burst ;
 int poll_burst_max ;
 scalar_t__ poll_handlers ;
 int poll_mtx ;
 TYPE_1__ poll_start_t ;
 scalar_t__ residual_burst ;
 int user_frac ;

void
netisr_pollmore()
{
 struct timeval t;
 int kern_load;

 if (poll_handlers == 0)
  return;

 mtx_lock(&poll_mtx);
 if (!netisr_pollmore_scheduled) {
  mtx_unlock(&poll_mtx);
  return;
 }
 netisr_pollmore_scheduled = 0;
 phase = 5;
 if (residual_burst > 0) {
  netisr_poll_scheduled = 1;
  netisr_pollmore_scheduled = 1;
  netisr_sched_poll();
  mtx_unlock(&poll_mtx);

  return;
 }

 microuptime(&t);
 kern_load = (t.tv_usec - poll_start_t.tv_usec) +
  (t.tv_sec - poll_start_t.tv_sec)*1000000;
 kern_load = (kern_load * hz) / 10000;
 if (kern_load > (100 - user_frac)) {
  if (poll_burst > 1)
   poll_burst--;
 } else {
  if (poll_burst < poll_burst_max)
   poll_burst++;
 }

 pending_polls--;
 if (pending_polls == 0)
  phase = 0;
 else {





  poll_burst -= (poll_burst / 8);
  if (poll_burst < 1)
   poll_burst = 1;
  netisr_poll_scheduled = 1;
  netisr_pollmore_scheduled = 1;
  netisr_sched_poll();
  phase = 6;
 }
 mtx_unlock(&poll_mtx);
}
