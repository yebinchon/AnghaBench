
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int errx (int,char*) ;
 scalar_t__ geteuid () ;
 scalar_t__ getuid () ;
 int run (int *,int,int) ;
 scalar_t__ something_failed ;
 int * tests ;
 int tests_count ;

int
main(int argc, char *argv[])
{
 int i;
 if (getuid() != 0 && geteuid() != 0)
  errx(-1, "must be run as root");





 for (i = 0; i < tests_count; i++) {
  run(&tests[i], 0, 0);
  run(&tests[i], 0, 1);
  run(&tests[i], 1, 0);
  run(&tests[i], 1, 1);
 }
 return (something_failed ? EXIT_FAILURE : EXIT_SUCCESS);
}
