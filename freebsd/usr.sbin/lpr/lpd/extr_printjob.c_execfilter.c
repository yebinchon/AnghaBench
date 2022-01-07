
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {int printer; } ;
typedef scalar_t__ pid_t ;
typedef int buf ;
typedef int FILE ;


 int BUFSIZ ;
 int DORETURN ;
 int LOG_ERR ;
 int LOG_WARNING ;
 int O_TRUNC ;
 int O_WRONLY ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int WEXITSTATUS (int) ;
 int closeallfds (int) ;
 int closelog () ;
 scalar_t__ dofork (struct printer*,int ) ;
 int dup2 (int,int ) ;
 int execv (char*,char**) ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 int fputs (char*,int ) ;
 int open (int ,int,int) ;
 int stderr ;
 char* strrchr (char*,char) ;
 int syslog (int ,char*,int ,char*) ;
 int tempstderr ;
 scalar_t__ wait (int*) ;

__attribute__((used)) static int
execfilter(struct printer *pp, char *f_cmd, char *f_av[], int infd, int outfd)
{
 pid_t fpid, wpid;
 int errfd, retcode, wstatus;
 FILE *errfp;
 char buf[BUFSIZ], *slash;

 fpid = dofork(pp, DORETURN);
 if (fpid != 0) {





  if (fpid < 0)
   retcode = 100;
  else {
   while ((wpid = wait(&wstatus)) > 0 &&
       wpid != fpid)
    ;
   if (wpid < 0) {
    retcode = 100;
    syslog(LOG_WARNING,
        "%s: after execv(%s), wait() returned: %m",
        pp->printer, f_cmd);
   } else
    retcode = WEXITSTATUS(wstatus);
  }





  errfp = fopen(tempstderr, "r");
  if (errfp) {
   while (fgets(buf, sizeof(buf), errfp))
    fputs(buf, stderr);
   fclose(errfp);
  }

  return (retcode);
 }
 slash = strrchr(f_av[0], '/');
 if (slash != ((void*)0))
  f_av[0] = slash + 1;
 dup2(infd, STDIN_FILENO);
 dup2(outfd, STDOUT_FILENO);
 errfd = open(tempstderr, O_WRONLY|O_TRUNC, 0664);
 if (errfd >= 0)
  dup2(errfd, STDERR_FILENO);
 closelog();
 closeallfds(3);
 execv(f_cmd, f_av);
 syslog(LOG_ERR, "%s: cannot execv(%s): %m", pp->printer, f_cmd);
 exit(2);

}
