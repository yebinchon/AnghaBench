
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EPERM ;
 int adjtime (int *,int *) ;
 int expect (char*,int,int,int ) ;
 int query_tv ;

void
priv_adjtime_set(int asroot, int injail, struct test *test)
{
 int error;

 error = adjtime(&query_tv, ((void*)0));
 if (asroot && injail)
  expect("priv_adjtime(asroot, injail)", error, -1, EPERM);
 if (asroot && !injail)
  expect("priv_adjtime(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_adjtime(!asroot, injail)", error, -1, EPERM);
 if (!asroot && !injail)
  expect("priv_adjtime(!asroot, !injail)", error, -1, EPERM);
}
