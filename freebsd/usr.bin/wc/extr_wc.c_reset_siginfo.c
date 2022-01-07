
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINFO ;
 int SIG_DFL ;
 scalar_t__ siginfo ;
 int signal (int ,int ) ;

__attribute__((used)) static void
reset_siginfo(void)
{

 signal(SIGINFO, SIG_DFL);
 siginfo = 0;
}
