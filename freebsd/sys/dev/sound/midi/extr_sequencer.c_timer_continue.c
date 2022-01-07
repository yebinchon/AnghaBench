
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct seq_softc {int timerrun; int timersub; int timerstop; } ;


 int getmicrotime (struct timeval*) ;
 int timevaladd (int *,struct timeval*) ;
 int timevalsub (struct timeval*,int *) ;

__attribute__((used)) static void
timer_continue(struct seq_softc *t)
{
 struct timeval now;

 if (t->timerrun == 1)
  return;
 t->timerrun = 1;
 getmicrotime(&now);
 timevalsub(&now, &t->timerstop);
 timevaladd(&t->timersub, &now);
}
