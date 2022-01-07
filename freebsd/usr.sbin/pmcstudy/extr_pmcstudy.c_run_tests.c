
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int printf (char*,...) ;
 int stdout ;
 int test_for_a_pmc (char*,int) ;
 int valid_pmc_cnt ;
 char** valid_pmcs ;

__attribute__((used)) static void
run_tests(void)
{
 int i, lenout;
 printf("Running tests on %d PMC's this may take some time\n", valid_pmc_cnt);
 printf("------------------------------------------------------------------------\n");
 for(i=0; i<valid_pmc_cnt; i++) {
  lenout = printf("%s", valid_pmcs[i]);
  fflush(stdout);
  test_for_a_pmc(valid_pmcs[i], lenout);
 }
}
