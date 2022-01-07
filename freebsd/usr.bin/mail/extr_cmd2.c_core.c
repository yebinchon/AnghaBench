
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WCOREDUMP (int ) ;
 scalar_t__ WIFSIGNALED (int ) ;
 int _exit (int) ;
 int abort () ;
 int fflush (int ) ;
 int fork () ;
 int printf (char*) ;
 int stdout ;
 int wait_child (int) ;
 int wait_status ;
 int warn (char*) ;

int
core(void)
{
 int pid;

 switch (pid = fork()) {
 case -1:
  warn("fork");
  return (1);
 case 0:
  abort();
  _exit(1);
 }
 printf("Okie dokie");
 (void)fflush(stdout);
 wait_child(pid);
 if (WIFSIGNALED(wait_status) && WCOREDUMP(wait_status))
  printf(" -- Core dumped.\n");
 else
  printf(" -- Can't dump core.\n");
 return (0);
}
