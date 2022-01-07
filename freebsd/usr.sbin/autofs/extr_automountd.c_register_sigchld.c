
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; int sa_handler; } ;
typedef int sa ;


 int SIGCHLD ;
 int bzero (struct sigaction*,int) ;
 int log_err (int,char*) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigchld_handler ;
 int sigfillset (int *) ;

__attribute__((used)) static void
register_sigchld(void)
{
 struct sigaction sa;
 int error;

 bzero(&sa, sizeof(sa));
 sa.sa_handler = sigchld_handler;
 sigfillset(&sa.sa_mask);
 error = sigaction(SIGCHLD, &sa, ((void*)0));
 if (error != 0)
  log_err(1, "sigaction");

}
