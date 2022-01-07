
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int u_int ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;


 int MACHCLK_SHIFT ;
 int PCATCH ;
 int PWAIT ;
 int atomic_load_acq_64 (int *) ;
 int hz ;
 int init_machclk_setup () ;
 int machclk_freq ;
 int machclk_per_tick ;
 scalar_t__ machclk_usepcc ;
 int microtime (struct timeval*) ;
 int printf (char*,int) ;
 int read_machclk () ;
 int tsc_freq ;
 int tsleep (int*,int,char*,int) ;

void
init_machclk(void)
{
 static int called;


 if (!called) {
  init_machclk_setup();
  called = 1;
 }

 if (machclk_usepcc == 0) {

  machclk_freq = 1000000 << MACHCLK_SHIFT;
  machclk_per_tick = machclk_freq / hz;



  return;
 }






 machclk_freq = atomic_load_acq_64(&tsc_freq);





 if (machclk_freq == 0) {
  static int wait;
  struct timeval tv_start, tv_end;
  u_int64_t start, end, diff;
  int timo;

  microtime(&tv_start);
  start = read_machclk();
  timo = hz;
  (void)tsleep(&wait, PWAIT | PCATCH, "init_machclk", timo);
  microtime(&tv_end);
  end = read_machclk();
  diff = (u_int64_t)(tv_end.tv_sec - tv_start.tv_sec) * 1000000
      + tv_end.tv_usec - tv_start.tv_usec;
  if (diff != 0)
   machclk_freq = (u_int)((end - start) * 1000000 / diff);
 }

 machclk_per_tick = machclk_freq / hz;




}
