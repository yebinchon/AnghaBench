
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct utmpx {int ut_id; int ut_tv; int ut_type; } ;
struct TYPE_9__ {char* full; char* base; } ;
struct TYPE_6__ {int total; } ;
struct TYPE_7__ {int name; TYPE_1__ stats; } ;
struct physical {int fd; scalar_t__ session_owner; TYPE_4__ name; TYPE_3__* handler; TYPE_2__ link; TYPE_5__* dl; scalar_t__ Utmp; } ;
typedef scalar_t__ pid_t ;
struct TYPE_10__ {int bundle; } ;
struct TYPE_8__ {int (* destroy ) (struct physical*) ;int (* cooked ) (struct physical*) ;} ;


 int DEAD_PROCESS ;
 int ID0kill (scalar_t__,int ) ;
 int ID0logout (struct utmpx*) ;
 int ID0unlink (char*) ;
 int LogALERT ;
 int LogDEBUG ;
 int LogPHASE ;
 int PATH_MAX ;
 int SIGHUP ;
 char* _PATH_VARRUN ;
 int bundle_setsid (int ,int ) ;
 int close (int) ;
 int errno ;
 scalar_t__ getpgrp () ;
 scalar_t__ getpid () ;
 int gettimeofday (int *,int *) ;
 int log_Printf (int ,char*,int ,...) ;
 int log_SetTtyCommandMode (TYPE_5__*) ;
 int memset (struct utmpx*,int ,int) ;
 int physical_StopDeviceTimer (struct physical*) ;
 int physical_Unlock (struct physical*) ;
 int snprintf (char*,int,char*,...) ;
 int strerror (int ) ;
 int stub1 (struct physical*) ;
 int stub2 (struct physical*) ;
 scalar_t__ tcgetpgrp (int) ;
 int throughput_log (int *,int ,int ) ;
 int throughput_stop (int *) ;

void
physical_Close(struct physical *p)
{
  int newsid;
  char fn[PATH_MAX];
  struct utmpx ut;

  if (p->fd < 0)
    return;

  log_Printf(LogDEBUG, "%s: Close\n", p->link.name);

  if (p->handler && p->handler->cooked)
    (*p->handler->cooked)(p);

  physical_StopDeviceTimer(p);
  if (p->Utmp) {
    memset(&ut, 0, sizeof ut);
    ut.ut_type = DEAD_PROCESS;
    gettimeofday(&ut.ut_tv, ((void*)0));
    snprintf(ut.ut_id, sizeof ut.ut_id, "%xppp", (int)getpid());
    ID0logout(&ut);
    p->Utmp = 0;
  }
  newsid = tcgetpgrp(p->fd) == getpgrp();
  close(p->fd);
  p->fd = -1;
  log_SetTtyCommandMode(p->dl);

  throughput_stop(&p->link.stats.total);
  throughput_log(&p->link.stats.total, LogPHASE, p->link.name);

  if (p->session_owner != (pid_t)-1) {
    log_Printf(LogPHASE, "%s: HUPing %ld\n", p->link.name,
               (long)p->session_owner);
    ID0kill(p->session_owner, SIGHUP);
    p->session_owner = (pid_t)-1;
  }

  if (newsid)
    bundle_setsid(p->dl->bundle, 0);

  if (*p->name.full == '/') {
    snprintf(fn, sizeof fn, "%s%s.if", _PATH_VARRUN, p->name.base);
    if (ID0unlink(fn) == -1)
      log_Printf(LogALERT, "%s: Can't remove %s: %s\n",
                 p->link.name, fn, strerror(errno));
  }
  physical_Unlock(p);
  if (p->handler && p->handler->destroy)
    (*p->handler->destroy)(p);
  p->handler = ((void*)0);
  p->name.base = p->name.full;
  *p->name.full = '\0';
}
