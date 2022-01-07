
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int FILE ;


 char* PIDFILE ;
 int SIGTERM ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,int) ;
 int fscanf (int *,char*,int*) ;
 int kill (int,int ) ;
 int snprintf (char*,int,char*,char const*) ;
 int stderr ;
 int warn (char*,char*) ;
 int warnx (char*) ;

__attribute__((used)) static void
send_disconnect(const char *ifnam)
{
 char pidfile[128];
 FILE *fp;
 pid_t pid;
 int n;

 snprintf(pidfile, 127, PIDFILE, ifnam);
 fp = fopen(pidfile, "r");
 if (fp == ((void*)0)) {
  warn("Cannot open %s", pidfile);
  return;
 }

 n = fscanf(fp, "%d", &pid);
 fclose(fp);
 if (n != 1) {
  warnx("unable to read daemon pid");
  return;
 }



 kill(pid, SIGTERM);
}
