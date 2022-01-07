
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;
struct rlimit {scalar_t__ rlim_max; scalar_t__ rlim_cur; } ;


 int EPERM ;
 int RLIMIT_DATA ;
 int expect (char*,int,int,int ) ;
 struct rlimit rl_lowered ;
 int setrlimit (int ,struct rlimit*) ;

void
priv_proc_setrlimit_raisecur(int asroot, int injail, struct test *test)
{
 struct rlimit rl;
 int error;

 rl = rl_lowered;
 rl.rlim_cur = rl.rlim_max + 10;
 error = setrlimit(RLIMIT_DATA, &rl);
 if (asroot && injail)
  expect("priv_proc_setrlimit_raisecur(asroot, injail)", error,
      0, 0);
 if (asroot && !injail)
  expect("priv_proc_setrlimit_raisecur(asroot, !injail)",
      error, 0, 0);
 if (!asroot && injail)
  expect("priv_proc_setrlimit_raisecur(!asroot, injail)",
      error, -1, EPERM);
 if (!asroot && !injail)
  expect("priv_proc_setrlimit_raisecur(!asroot, !injail)",
      error, -1, EPERM);
}
