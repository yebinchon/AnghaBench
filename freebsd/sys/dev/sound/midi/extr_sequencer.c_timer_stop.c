
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_softc {int timerstop; scalar_t__ timerrun; } ;


 int getmicrotime (int *) ;

__attribute__((used)) static void
timer_stop(struct seq_softc *t)
{
 t->timerrun = 0;
 getmicrotime(&t->timerstop);
}
