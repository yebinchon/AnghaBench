
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {unsigned long long tv_sec; scalar_t__ tv_usec; } ;
struct seq_softc {scalar_t__ timerrun; unsigned long long timerbase; int timersub; struct timeval timerstop; } ;


 int getmicrotime (struct timeval*) ;
 int timevalsub (struct timeval*,int *) ;

__attribute__((used)) static int
timer_now(struct seq_softc *t)
{
 struct timeval now;
 unsigned long long i;
 int ret;

 if (t->timerrun == 0)
  now = t->timerstop;
 else
  getmicrotime(&now);

 timevalsub(&now, &t->timersub);

 i = now.tv_sec * 1000000ull;
 i += now.tv_usec;
 i *= t->timerbase;

 i /= 1000000ull;

 ret = i;




 return ret;
}
