
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EPERM ;
 int acct (int *) ;
 int expect (char*,int,int,int ) ;

void
priv_acct_disable(int asroot, int injail, struct test *test)
{
 int error;

 error = acct(((void*)0));
 if (asroot && injail)
  expect("priv_acct_disable(root, jail)", error, -1, EPERM);
 if (asroot && !injail)
  expect("priv_acct_disable(root, !jail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_acct_disable(!root, jail)", error, -1, EPERM);
 if (!asroot && !injail)
  expect("priv_acct_disable(!root, !jail)", error, -1, EPERM);
}
