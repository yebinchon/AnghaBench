
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {void* sa_handler; int sa_mask; } ;
typedef int sa ;


 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int bzero (struct sigaction*,int) ;
 int log_err (int,char*) ;
 int sigaction (int ,struct sigaction*,int *) ;
 void* sigchld_handler ;
 int sigfillset (int *) ;
 void* sighup_handler ;
 void* sigterm_handler ;

__attribute__((used)) static void
register_signals(void)
{
 struct sigaction sa;
 int error;

 bzero(&sa, sizeof(sa));
 sa.sa_handler = sighup_handler;
 sigfillset(&sa.sa_mask);
 error = sigaction(SIGHUP, &sa, ((void*)0));
 if (error != 0)
  log_err(1, "sigaction");

 sa.sa_handler = sigterm_handler;
 error = sigaction(SIGTERM, &sa, ((void*)0));
 if (error != 0)
  log_err(1, "sigaction");

 sa.sa_handler = sigterm_handler;
 error = sigaction(SIGINT, &sa, ((void*)0));
 if (error != 0)
  log_err(1, "sigaction");

 sa.sa_handler = sigchld_handler;
 error = sigaction(SIGCHLD, &sa, ((void*)0));
 if (error != 0)
  log_err(1, "sigaction");
}
