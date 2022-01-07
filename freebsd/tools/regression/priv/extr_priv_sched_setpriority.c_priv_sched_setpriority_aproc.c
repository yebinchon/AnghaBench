
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EACCES ;
 int PRIO_PROCESS ;
 int expect (char*,int,int,int ) ;
 int setpriority (int ,int ,int) ;

void
priv_sched_setpriority_aproc(int asroot, int injail, struct test *test)
{
 int error;

 error = setpriority(PRIO_PROCESS, 0, -1);
 if (asroot && injail)
  expect("priv_sched_setpriority_aproc(asroot, injail)",
      error, -1, EACCES);
 if (asroot && !injail)
  expect("priv_sched_setpriority_aproc(asroot, !injail)",
      error, 0, 0);
 if (!asroot && injail)
  expect("priv_sched_setpriority_aproc(!asroot, injail)",
      error, -1, EACCES);
 if (!asroot && !injail)
  expect("priv_sched_setpriority_aproc(!asroot, !injail)",
      error, -1, EACCES);
}
