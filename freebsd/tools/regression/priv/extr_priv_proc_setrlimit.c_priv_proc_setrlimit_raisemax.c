
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct test {int dummy; } ;
struct rlimit {int rlim_max; } ;
struct TYPE_2__ {int rlim_max; } ;


 int EPERM ;
 int RLIMIT_DATA ;
 int expect (char*,int,int,int ) ;
 TYPE_1__ rl_base ;
 struct rlimit rl_lowered ;
 int setrlimit (int ,struct rlimit*) ;

void
priv_proc_setrlimit_raisemax(int asroot, int injail, struct test *test)
{
 struct rlimit rl;
 int error;

 rl = rl_lowered;
 rl.rlim_max = rl_base.rlim_max;
 error = setrlimit(RLIMIT_DATA, &rl);
 if (asroot && injail)
  expect("priv_proc_setrlimit_raisemax(asroot, injail)", error,
      0, 0);
 if (asroot && !injail)
  expect("priv_proc_setrlimit_raisemax(asroot, !injail)",
      error, 0, 0);
 if (!asroot && injail)
  expect("priv_proc_setrlimit_raisemax(!asroot, injail)",
      error, -1, EPERM);
 if (!asroot && !injail)
  expect("priv_proc_setrlimit_raisemax(!asroot, !injail)",
      error, -1, EPERM);
}
