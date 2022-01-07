
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int RLIMIT_DATA ;
 scalar_t__ initialized ;
 int rl_base ;
 int setrlimit (int ,int *) ;

void
priv_proc_setrlimit_cleanup(int asroot, int injail, struct test *test)
{

 if (initialized)
  (void)setrlimit(RLIMIT_DATA, &rl_base);
 initialized = 0;
}
