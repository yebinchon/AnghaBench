
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int CLOCK_REALTIME ;
 int EPERM ;
 int clock_settime (int ,int *) ;
 int expect (char*,int,int,int ) ;
 int the_time ;

void
priv_clock_settime(int asroot, int injail, struct test *test)
{
 int error;

 error = clock_settime(CLOCK_REALTIME, &the_time);
 if (asroot && injail)
  expect("priv_clock_settime(asroot, injail)", error, -1,
      EPERM);
 if (asroot && !injail)
  expect("priv_clock_settime(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_clock_settime(!asroot, injail)", error, -1,
      EPERM);
 if (!asroot && !injail)
  expect("priv_clock_settime(!asroot, !injail", error, -1,
      EPERM);
}
