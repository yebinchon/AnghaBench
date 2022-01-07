
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINFO ;
 int SIGINT ;
 int got_siginfo ;
 int got_sigint ;
 int signal (int ,int ) ;

__attribute__((used)) static void
setup_signals(void)
{

 signal(SIGINFO, got_siginfo);
 signal(SIGINT, got_sigint);
}
