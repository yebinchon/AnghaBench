
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int time_t ;
typedef int line ;
typedef int host ;


 int MAXHOSTNAMELEN ;
 int O_WRONLY ;
 int SIGHUP ;
 int SIGINT ;
 int _PATH_DEV ;
 char* ctime (int *) ;
 int done ;
 int err (int,char*,int ,char*) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int * fgetws (int *,int,int ) ;
 scalar_t__ gethostname (char*,int) ;
 int openat (int,char*,int ) ;
 int printf (char*,char const*,char*,char*,char*) ;
 int signal (int ,int ) ;
 int stdin ;
 int * stdout ;
 int strcpy (char*,char*) ;
 int time (int *) ;
 int wr_fputs (int *) ;

void
do_write(int devfd, char *tty, char *mytty, const char *login)
{
 char *nows;
 time_t now;
 char host[MAXHOSTNAMELEN];
 wchar_t line[512];
 int fd;

 fd = openat(devfd, tty, O_WRONLY);
 if (fd < 0)
  err(1, "openat(%s%s)", _PATH_DEV, tty);
 fclose(stdout);
 stdout = fdopen(fd, "w");
 if (stdout == ((void*)0))
  err(1, "%s%s", _PATH_DEV, tty);

 (void)signal(SIGINT, done);
 (void)signal(SIGHUP, done);


 if (gethostname(host, sizeof(host)) < 0)
  (void)strcpy(host, "???");
 now = time((time_t *)((void*)0));
 nows = ctime(&now);
 nows[16] = '\0';
 (void)printf("\r\n\007\007\007Message from %s@%s on %s at %s ...\r\n",
     login, host, mytty, nows + 11);

 while (fgetws(line, sizeof(line)/sizeof(wchar_t), stdin) != ((void*)0))
  wr_fputs(line);
}
