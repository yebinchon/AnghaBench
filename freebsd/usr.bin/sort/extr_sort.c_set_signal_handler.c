
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int * sa_sigaction; } ;
typedef int sa ;


 int SA_SIGINFO ;
 int SIGABRT ;
 int SIGBUS ;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGSEGV ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int memset (struct sigaction*,int ,int) ;
 int perror (char*) ;
 int sig_handler ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;

__attribute__((used)) static void
set_signal_handler(void)
{
 struct sigaction sa;

 memset(&sa, 0, sizeof(sa));
 sa.sa_sigaction = &sig_handler;
 sa.sa_flags = SA_SIGINFO;

 if (sigaction(SIGTERM, &sa, ((void*)0)) < 0) {
  perror("sigaction");
  return;
 }
 if (sigaction(SIGHUP, &sa, ((void*)0)) < 0) {
  perror("sigaction");
  return;
 }
 if (sigaction(SIGINT, &sa, ((void*)0)) < 0) {
  perror("sigaction");
  return;
 }
 if (sigaction(SIGQUIT, &sa, ((void*)0)) < 0) {
  perror("sigaction");
  return;
 }
 if (sigaction(SIGABRT, &sa, ((void*)0)) < 0) {
  perror("sigaction");
  return;
 }
 if (sigaction(SIGBUS, &sa, ((void*)0)) < 0) {
  perror("sigaction");
  return;
 }
 if (sigaction(SIGSEGV, &sa, ((void*)0)) < 0) {
  perror("sigaction");
  return;
 }
 if (sigaction(SIGUSR1, &sa, ((void*)0)) < 0) {
  perror("sigaction");
  return;
 }
 if (sigaction(SIGUSR2, &sa, ((void*)0)) < 0) {
  perror("sigaction");
  return;
 }
}
