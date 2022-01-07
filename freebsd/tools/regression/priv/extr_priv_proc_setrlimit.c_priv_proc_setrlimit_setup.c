
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct test {int dummy; } ;
struct TYPE_5__ {int rlim_cur; int rlim_max; } ;


 int RLIMIT_DATA ;
 scalar_t__ getrlimit (int ,TYPE_1__*) ;
 int initialized ;
 TYPE_1__ rl_base ;
 TYPE_1__ rl_lowered ;
 scalar_t__ setrlimit (int ,TYPE_1__*) ;
 int warn (char*) ;

int
priv_proc_setrlimit_setup(int asroot, int injail, struct test *test)
{

 if (getrlimit(RLIMIT_DATA, &rl_base) < 0) {
  warn("priv_proc_setrlimit_setup: getrlimit");
  return (-1);
 }






 rl_lowered = rl_base;
 rl_lowered.rlim_cur -= 20;
 rl_lowered.rlim_max -= 10;
 if (setrlimit(RLIMIT_DATA, &rl_lowered) < 0) {
  warn("priv_proc_setrlimit_setup: setrlimit");
  return (-1);
 }
 initialized = 1;
 return (0);
}
