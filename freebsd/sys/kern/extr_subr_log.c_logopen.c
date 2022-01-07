
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct cdev {int dummy; } ;
struct TYPE_4__ {int sc_sigio; int sc_callout; } ;
struct TYPE_3__ {int p_pid; } ;


 int C_PREL (int) ;
 int EBUSY ;
 int SBT_1S ;
 int callout_reset_sbt (int *,int,int ,int ,int *,int ) ;
 int fsetown (int ,int *) ;
 int log_open ;
 int log_wakeups_per_second ;
 TYPE_2__ logsoftc ;
 int logtimeout ;
 int msgbuf_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*) ;

__attribute__((used)) static int
logopen(struct cdev *dev, int flags, int mode, struct thread *td)
{

 if (log_wakeups_per_second < 1) {
  printf("syslog wakeup is less than one.  Adjusting to 1.\n");
  log_wakeups_per_second = 1;
 }

 mtx_lock(&msgbuf_lock);
 if (log_open) {
  mtx_unlock(&msgbuf_lock);
  return (EBUSY);
 }
 log_open = 1;
 callout_reset_sbt(&logsoftc.sc_callout,
     SBT_1S / log_wakeups_per_second, 0, logtimeout, ((void*)0), C_PREL(1));
 mtx_unlock(&msgbuf_lock);

 fsetown(td->td_proc->p_pid, &logsoftc.sc_sigio);
 return (0);
}
