
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enact_scenarios () ;
 int fprintf (int ,char*) ;
 int perror (char*) ;
 int setugid (int) ;
 int stderr ;

int
main(int argc, char *argv[])
{
 int error;

 fprintf(stderr, "test capabilities: ");
 fprintf(stderr, "\n");

 error = setugid(1);
 if (error) {
  perror("setugid");
  fprintf(stderr,
      "This test suite requires options REGRESSION\n");
  return (-1);
 }

 enact_scenarios();

 return (0);
}
