
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGSYS ;
 int SIG_IGN ;
 int run_tests () ;
 int signal (int ,int ) ;

int
main(int argc, char *argv[])
{

 signal(SIGSYS, SIG_IGN);
 run_tests();
 return (0);
}
