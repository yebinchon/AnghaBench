
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int si_note; } ;
struct TYPE_4__ {int sc_state; int sc_callout; int * sc_sigio; TYPE_1__ sc_selp; } ;


 int C_PREL (int) ;
 int KNOTE_LOCKED (int *,int ) ;
 int LOG_ASYNC ;
 int LOG_RDPRI ;
 int SBT_1S ;
 int SIGIO ;
 int callout_reset_sbt (int *,int,int ,void (*) (void*),int *,int ) ;
 int cv_broadcastpri (int *,int ) ;
 int log_open ;
 int log_wakeup ;
 int log_wakeups_per_second ;
 TYPE_2__ logsoftc ;
 scalar_t__ msgbuftrigger ;
 int pgsigio (int **,int ,int ) ;
 int printf (char*) ;
 int selwakeuppri (TYPE_1__*,int ) ;

__attribute__((used)) static void
logtimeout(void *arg)
{

 if (!log_open)
  return;
 if (msgbuftrigger == 0)
  goto done;
 msgbuftrigger = 0;
 selwakeuppri(&logsoftc.sc_selp, LOG_RDPRI);
 KNOTE_LOCKED(&logsoftc.sc_selp.si_note, 0);
 if ((logsoftc.sc_state & LOG_ASYNC) && logsoftc.sc_sigio != ((void*)0))
  pgsigio(&logsoftc.sc_sigio, SIGIO, 0);
 cv_broadcastpri(&log_wakeup, LOG_RDPRI);
done:
 if (log_wakeups_per_second < 1) {
  printf("syslog wakeup is less than one.  Adjusting to 1.\n");
  log_wakeups_per_second = 1;
 }
 callout_reset_sbt(&logsoftc.sc_callout,
     SBT_1S / log_wakeups_per_second, 0, logtimeout, ((void*)0), C_PREL(1));
}
