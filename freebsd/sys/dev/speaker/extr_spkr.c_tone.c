
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCATCH ;
 int SPKRPRI ;
 int disable_intr () ;
 int enable_intr () ;
 int endtone ;
 unsigned int hz ;
 int printf (char*,unsigned int,unsigned int) ;
 int splclock () ;
 int splx (int) ;
 scalar_t__ timer_spkr_acquire () ;
 int timer_spkr_release () ;
 int timer_spkr_setfreq (unsigned int) ;
 int tsleep (int *,int,char*,int) ;

__attribute__((used)) static void
tone(unsigned int thz, unsigned int centisecs)
{
 int sps, timo;

 if (thz <= 0)
  return;






 sps = splclock();

 if (timer_spkr_acquire()) {

  splx(sps);
  return;
 }
 splx(sps);
 disable_intr();
 timer_spkr_setfreq(thz);
 enable_intr();






 timo = centisecs * hz / 100;
 if (timo > 0)
  tsleep(&endtone, SPKRPRI | PCATCH, "spkrtn", timo);
 sps = splclock();
 timer_spkr_release();
 splx(sps);
}
