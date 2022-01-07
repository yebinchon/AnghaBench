
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHILD_REQUIRE (int) ;
 int SIGABRT ;
 int SIGUSR1 ;
 int raise (int ) ;

__attribute__((used)) static void
sigusr1_step_handler(int sig)
{

 CHILD_REQUIRE(sig == SIGUSR1);
 raise(SIGABRT);
}
