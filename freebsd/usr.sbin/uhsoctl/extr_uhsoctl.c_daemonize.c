
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pidfh {int dummy; } ;
struct ctx {char* ifnam; int flags; struct pidfh* pfh; int pidfile; } ;
typedef int pid_t ;


 int FLG_DAEMON ;
 int LOG_PID ;
 int LOG_USER ;
 char* PIDFILE ;
 int daemon (int ,int ) ;
 char* getprogname () ;
 int openlog (int ,int ,int ) ;
 struct pidfh* pidfile_open (int ,int,int *) ;
 int pidfile_remove (struct pidfh*) ;
 int pidfile_write (struct pidfh*) ;
 int snprintf (int ,int,char*,char*,...) ;
 int syslog_open ;
 int syslog_title ;
 int warn (char*,...) ;

__attribute__((used)) static void
daemonize(struct ctx *ctx)
{
 struct pidfh *pfh;
 pid_t opid;

 snprintf(ctx->pidfile, 127, PIDFILE, ctx->ifnam);

 pfh = pidfile_open(ctx->pidfile, 0600, &opid);
 if (pfh == ((void*)0)) {
  warn("Cannot create pidfile %s", ctx->pidfile);
  return;
 }

 if (daemon(0, 0) == -1) {
  warn("Cannot daemonize");
  pidfile_remove(pfh);
  return;
 }

 pidfile_write(pfh);
 ctx->pfh = pfh;
 ctx->flags |= FLG_DAEMON;

 snprintf(syslog_title, 63, "%s:%s", getprogname(), ctx->ifnam);
 openlog(syslog_title, LOG_PID, LOG_USER);
 syslog_open = 1;
}
