
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* hwd; } ;
struct TYPE_3__ {scalar_t__ hwd_start_signal_barrier; } ;


 int SIGHUP ;
 scalar_t__ SIG_ERR ;
 size_t curthread ;
 int err (int,char*) ;
 scalar_t__ signal (int ,int ) ;
 int signal_handler ;
 int sleep (int) ;
 TYPE_2__* statep ;

__attribute__((used)) static void
signal_barrier_wait(void)
{


 if (signal(SIGHUP, signal_handler) == SIG_ERR)
  err(-1, "signal");
 while (1) {
  sleep(100);
  if (statep->hwd[curthread].hwd_start_signal_barrier)
   break;
 }
}
