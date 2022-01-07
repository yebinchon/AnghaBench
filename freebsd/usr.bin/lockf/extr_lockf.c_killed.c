
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OSERR ;
 int SIG_DFL ;
 int cleanup () ;
 int err (int ,char*) ;
 int getpid () ;
 int kill (int ,int) ;
 int signal (int,int ) ;

__attribute__((used)) static void
killed(int sig)
{

 cleanup();
 signal(sig, SIG_DFL);
 if (kill(getpid(), sig) == -1)
  err(EX_OSERR, "kill failed");
}
