
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {int printer; int daemon_user; } ;
struct passwd {int pw_gid; int pw_name; } ;
typedef int pid_t ;




 int LOG_ERR ;
 int daemon_defgid ;
 int * daemon_uname ;
 scalar_t__ errno ;
 int exit (int) ;
 int fork () ;
 struct passwd* getpwuid (int ) ;
 int initgroups (int *,int ) ;
 int setgid (int ) ;
 int setuid (int ) ;
 int sleep (int) ;
 int * strdup (int ) ;
 int syslog (int ,char*,int,...) ;

__attribute__((used)) static int
dofork(const struct printer *pp, int action)
{
 pid_t forkpid;
 int i, fail;
 struct passwd *pwd;

 forkpid = -1;
 if (daemon_uname == ((void*)0)) {
  pwd = getpwuid(pp->daemon_user);
  if (pwd == ((void*)0)) {
   syslog(LOG_ERR, "%s: Can't lookup default daemon uid (%ld) in password file",
       pp->printer, pp->daemon_user);
   goto error_ret;
  }
  daemon_uname = strdup(pwd->pw_name);
  daemon_defgid = pwd->pw_gid;
 }

 for (i = 0; i < 20; i++) {
  forkpid = fork();
  if (forkpid < 0) {
   sleep((unsigned)(i*i));
   continue;
  }



  if (forkpid == 0) {
   errno = 0;
   fail = initgroups(daemon_uname, daemon_defgid);
   if (fail) {
    syslog(LOG_ERR, "%s: initgroups(%s,%u): %m",
        pp->printer, daemon_uname, daemon_defgid);
    break;
   }
   fail = setgid(daemon_defgid);
   if (fail) {
    syslog(LOG_ERR, "%s: setgid(%u): %m",
        pp->printer, daemon_defgid);
    break;
   }
   fail = setuid(pp->daemon_user);
   if (fail) {
    syslog(LOG_ERR, "%s: setuid(%ld): %m",
        pp->printer, pp->daemon_user);
    break;
   }
  }
  return (forkpid);
 }






error_ret:
 if (forkpid == 0) {
  syslog(LOG_ERR, "%s: dofork(): aborting child process...",
      pp->printer);
  exit(1);
 }
 syslog(LOG_ERR, "%s: dofork(): failure in fork", pp->printer);

 sleep(1);
 switch (action) {
 case 128:
  return (-1);
 default:
  syslog(LOG_ERR, "bad action (%d) to dofork", action);

 case 129:
  exit(1);
 }

}
