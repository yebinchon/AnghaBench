
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bundle {int unit; } ;
typedef int FILE ;


 int * ID0fopen (char*,char*) ;
 int LogERROR ;
 int PATH_MAX ;
 char* _PATH_VARRUN ;
 int errno ;
 int fclose (int *) ;
 int fprintf (int *,char*,int) ;
 scalar_t__ getpid () ;
 int log_Printf (int ,char*,char*,int ) ;
 int snprintf (char*,int,char*,char*,int) ;
 int strerror (int ) ;

void
bundle_LockTun(struct bundle *bundle)
{
  FILE *lockfile;
  char pidfile[PATH_MAX];

  snprintf(pidfile, sizeof pidfile, "%stun%d.pid", _PATH_VARRUN, bundle->unit);
  lockfile = ID0fopen(pidfile, "w");
  if (lockfile != ((void*)0)) {
    fprintf(lockfile, "%d\n", (int)getpid());
    fclose(lockfile);
  } else
    log_Printf(LogERROR, "Warning: Can't create %s: %s\n",
               pidfile, strerror(errno));
}
