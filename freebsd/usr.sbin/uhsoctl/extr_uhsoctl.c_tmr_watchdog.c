
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; } ;
struct ctx {int flags; scalar_t__ watchdog; } ;
typedef int pid_t ;


 int CLOCK_MONOTONIC ;
 int FLG_WATCHDOG ;
 int FLG_WDEXP ;
 int SIGHUP ;
 int clock_gettime (int ,struct timespec*) ;
 int fprintf (int ,char*) ;
 int getpid () ;
 int kill (int ,int ) ;
 int stderr ;
 int timers ;
 int tmr_add (int *,int,int,void (*) (int,void*),struct ctx*) ;

__attribute__((used)) static void
tmr_watchdog(int id, void *arg)
{
 struct ctx *ctx = arg;
 pid_t self;
 struct timespec tp;

 tmr_add(&timers, 1, 5, tmr_watchdog, ctx);

 if (!(ctx->flags & FLG_WATCHDOG))
  return;

 clock_gettime(CLOCK_MONOTONIC, &tp);

 if (tp.tv_sec >= ctx->watchdog) {



  ctx->flags |= FLG_WDEXP;
  self = getpid();
  kill(self, SIGHUP);
 }
}
