
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sig_t ;
typedef int cmd ;


 int BUFSIZ ;
 int SIGINT ;
 int SIG_IGN ;
 char* _PATH_CSHELL ;
 scalar_t__ bangexp (char*,int) ;
 int printf (char*) ;
 int run_command (char*,int ,int,int,char*,char*,int *) ;
 int signal (int ,int ) ;
 int strlcpy (char*,char*,int) ;
 char* value (char*) ;

int
shell(char *str)
{
 sig_t sigint = signal(SIGINT, SIG_IGN);
 char *sh;
 char cmd[BUFSIZ];

 if (strlcpy(cmd, str, sizeof(cmd)) >= sizeof(cmd))
  return (1);
 if (bangexp(cmd, sizeof(cmd)) < 0)
  return (1);
 if ((sh = value("SHELL")) == ((void*)0))
  sh = _PATH_CSHELL;
 (void)run_command(sh, 0, -1, -1, "-c", cmd, ((void*)0));
 (void)signal(SIGINT, sigint);
 printf("!\n");
 return (0);
}
