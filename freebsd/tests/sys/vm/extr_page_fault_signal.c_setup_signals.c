
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_mask; int sa_sigaction; } ;


 int ATF_REQUIRE (int) ;
 int SA_RESETHAND ;
 int SA_RESTART ;
 int SA_SIGINFO ;
 int SIGBUS ;
 int SIGILL ;
 int SIGSEGV ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigfillset (int *) ;
 int sighandler ;

__attribute__((used)) static void
setup_signals(void)
{
 struct sigaction sa;
 int r;

 sa.sa_sigaction = sighandler;
 sa.sa_flags = SA_RESTART | SA_RESETHAND | SA_SIGINFO;
 r = sigfillset(&sa.sa_mask);
 ATF_REQUIRE(r != -1);
 r = sigaction(SIGILL, &sa, ((void*)0));
 ATF_REQUIRE(r != -1);
 r = sigaction(SIGBUS, &sa, ((void*)0));
 ATF_REQUIRE(r != -1);
 r = sigaction(SIGSEGV, &sa, ((void*)0));
 ATF_REQUIRE(r != -1);
}
