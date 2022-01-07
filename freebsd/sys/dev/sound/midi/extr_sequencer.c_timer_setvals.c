
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_softc {int tempo; int timerbase; } ;



__attribute__((used)) static void
timer_setvals(struct seq_softc *t, int tempo, int timerbase)
{
 t->tempo = tempo;
 t->timerbase = timerbase;
}
