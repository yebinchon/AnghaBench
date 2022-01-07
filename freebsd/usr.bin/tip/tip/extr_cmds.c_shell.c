
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int SHELL ;
 int SIGINT ;
 int SIGQUIT ;
 int SIG_DFL ;
 int SIG_IGN ;
 int execl (char*,char*,char*) ;
 int exit (int) ;
 scalar_t__ fork () ;
 int printf (char*) ;
 int raw () ;
 int shell_uid () ;
 int signal (int ,int ) ;
 char* strrchr (char*,char) ;
 int unraw () ;
 char* value (int ) ;
 scalar_t__ wait (int*) ;

void
shell(int c)
{
 int status;
 char *cp;
 pid_t shpid;

 printf("[sh]\r\n");
 signal(SIGINT, SIG_IGN);
 signal(SIGQUIT, SIG_IGN);
 unraw();
 if ((shpid = fork())) {
  while (shpid != wait(&status));
  raw();
  printf("\r\n!\r\n");
  signal(SIGINT, SIG_DFL);
  signal(SIGQUIT, SIG_DFL);
  return;
 } else {
  signal(SIGQUIT, SIG_DFL);
  signal(SIGINT, SIG_DFL);
  if ((cp = strrchr(value(SHELL), '/')) == ((void*)0))
   cp = value(SHELL);
  else
   cp++;
  shell_uid();
  execl(value(SHELL), cp, (char *)((void*)0));
  printf("\r\ncan't execl!\r\n");
  exit(1);
 }
}
