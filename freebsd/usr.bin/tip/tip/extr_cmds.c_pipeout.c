
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int pid_t ;
typedef int buf ;


 int FD ;
 int SIGINT ;
 int SIGIOT ;
 int SIGQUIT ;
 int SIG_DFL ;
 int SIG_IGN ;
 int TCSAFLUSH ;
 int VERBOSE ;
 scalar_t__ boolean (int ) ;
 int ccc ;
 int close (int) ;
 int defchars ;
 int dup2 (int ,int) ;
 int execute (char*) ;
 int exit (int ) ;
 int * fildes ;
 int fork () ;
 int kill (int ,int ) ;
 int printf (char*,...) ;
 scalar_t__ prompt (char*,char*,int) ;
 int prtime (char*,scalar_t__) ;
 int putchar (int) ;
 int read (int ,char*,int) ;
 int * repdes ;
 int signal (int ,int ) ;
 int tcsetattr (int ,int ,int *) ;
 int term ;
 scalar_t__ time (int *) ;
 int tipout_pid ;
 int value (int ) ;
 int wait (int*) ;
 int write (int ,char*,int) ;

void
pipeout(int c)
{
 char buf[256];
 int status, p;
 pid_t cpid;
 time_t start = time(((void*)0));

 putchar(c);
 if (prompt("Local command? ", buf, sizeof(buf)))
  return;
 kill(tipout_pid, SIGIOT);
 signal(SIGINT, SIG_IGN);
 signal(SIGQUIT, SIG_IGN);
 tcsetattr(0, TCSAFLUSH, &defchars);
 read(repdes[0], (char *)&ccc, 1);




 if ((cpid = fork()) < 0)
  printf("can't fork!\r\n");
 else if (cpid) {
  start = time(((void*)0));
  while ((p = wait(&status)) > 0 && p != cpid)
   ;
 } else {
  int i;

  dup2(FD, 1);
  for (i = 3; i < 20; i++)
   close(i);
  signal(SIGINT, SIG_DFL);
  signal(SIGQUIT, SIG_DFL);
  execute(buf);
  printf("can't find `%s'\r\n", buf);
  exit(0);
 }
 if (boolean(value(VERBOSE)))
  prtime("away for ", time(0)-start);
 write(fildes[1], (char *)&ccc, 1);
 tcsetattr(0, TCSAFLUSH, &term);
 signal(SIGINT, SIG_DFL);
 signal(SIGQUIT, SIG_DFL);
}
