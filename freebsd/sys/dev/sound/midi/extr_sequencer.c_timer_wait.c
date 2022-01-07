
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {unsigned long long tv_sec; unsigned long long tv_usec; } ;
struct seq_softc {scalar_t__ timerrun; scalar_t__ playing; int tempo; int timerbase; int waiting; int seq_lock; int reset_cv; struct timeval timersub; } ;


 int EWOULDBLOCK ;
 int SEQ_DEBUG (int,int ) ;
 int cv_timedwait (int *,int *,unsigned long long) ;
 int cv_wait (int *,int *) ;
 int getmicrotime (struct timeval*) ;
 unsigned long long hz ;
 int printf (char*,...) ;
 int timevalsub (struct timeval*,struct timeval*) ;

__attribute__((used)) static void
timer_wait(struct seq_softc *t, int ticks, int wait_abs)
{
 struct timeval now, when;
 int ret;
 unsigned long long i;

 while (t->timerrun == 0) {
  SEQ_DEBUG(2, printf("Timer wait when timer isn't running\n"));






  cv_wait(&t->reset_cv, &t->seq_lock);
  if (t->playing == 0)
   return;
 }

 i = ticks * 60ull * 1000000ull / (t->tempo * t->timerbase);

 when.tv_sec = i / 1000000;
 when.tv_usec = i % 1000000;






 if (wait_abs != 0) {
  getmicrotime(&now);
  timevalsub(&now, &t->timersub);
  timevalsub(&when, &now);
 }
 if (when.tv_sec < 0 || when.tv_usec < 0) {
  SEQ_DEBUG(3,
      printf("seq_timer error negative time %lds.%06lds\n",
      (long)when.tv_sec, (long)when.tv_usec));
  return;
 }
 i = when.tv_sec * 1000000ull;
 i += when.tv_usec;
 i *= hz;
 i /= 1000000ull;




 t->waiting = 1;
 ret = cv_timedwait(&t->reset_cv, &t->seq_lock, i + 1);
 t->waiting = 0;

 if (ret != EWOULDBLOCK)
  SEQ_DEBUG(3, printf("seq_timer didn't timeout\n"));

}
