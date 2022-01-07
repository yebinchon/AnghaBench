
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHILD_REQUIRE (int) ;
 int SIGUSR1 ;
 int _exit (int) ;

__attribute__((used)) static void
sigusr1_handler(int sig)
{

 CHILD_REQUIRE(sig == SIGUSR1);
 _exit(2);
}
