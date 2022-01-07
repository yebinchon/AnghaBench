
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINFO ;
 int exit (int ) ;
 int handler ;
 int raise (int ) ;
 int signal (int ,int ) ;

__attribute__((used)) static void
signal_main(void)
{

 signal(SIGINFO, handler);
 raise(SIGINFO);
 exit(0);
}
