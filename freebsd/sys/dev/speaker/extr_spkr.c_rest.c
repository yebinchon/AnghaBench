
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCATCH ;
 int SPKRPRI ;
 int endrest ;
 int hz ;
 int printf (char*,int) ;
 int tsleep (int *,int,char*,int) ;

__attribute__((used)) static void
rest(int centisecs)
{
 int timo;
 timo = centisecs * hz / 100;
 if (timo > 0)
  tsleep(&endrest, SPKRPRI | PCATCH, "spkrrs", timo);
}
