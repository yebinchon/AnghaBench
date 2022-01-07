
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {scalar_t__ t_test_func; } ;
typedef int i ;


 int * SYSCTL_NAME ;
 scalar_t__ acct (int *) ;
 int * fpath1 ;
 int fpath1_initialized ;
 int * fpath2 ;
 int fpath2_initialized ;
 scalar_t__ priv_acct_disable ;
 scalar_t__ priv_acct_enable ;
 scalar_t__ priv_acct_noopdisable ;
 scalar_t__ priv_acct_rotate ;
 int setup_file (char*,int *,int ,int ,int) ;
 scalar_t__ sysctlbyname (int *,int*,size_t*,int *,int ) ;
 int warn (char*,...) ;
 int warnx (char*,int *) ;

int
priv_acct_setup(int asroot, int injail, struct test *test)
{
 size_t len;
 int i;

 len = sizeof(i);
 if (sysctlbyname(SYSCTL_NAME, &i, &len, ((void*)0), 0) < 0) {
  warn("priv_acct_setup: sysctlbyname(%s)", SYSCTL_NAME);
  return (-1);
 }
 if (i != 0) {
  warnx("sysctlbyname(%s) indicates accounting configured",
      SYSCTL_NAME);
  return (-1);
 }
 setup_file("priv_acct_setup: fpath1", fpath1, 0, 0, 0666);
 fpath1_initialized = 1;
 setup_file("priv_acct_setup: fpath2", fpath2, 0, 0, 0666);
 fpath2_initialized = 1;

 if (test->t_test_func == priv_acct_enable ||
     test->t_test_func == priv_acct_noopdisable) {
  if (acct(((void*)0)) != 0) {
   warn("priv_acct_setup: acct(NULL)");
   return (-1);
  }
 } else if (test->t_test_func == priv_acct_disable ||
      test->t_test_func == priv_acct_rotate) {
  if (acct(fpath1) != 0) {
   warn("priv_acct_setup: acct(\"%s\")", fpath1);
   return (-1);
  }
 }
 return (0);
}
