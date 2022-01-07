
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EPERM ;
 int expect (char*,int,int,int ) ;
 int gidset ;
 int gidset_len ;
 int setgroups (int ,int ) ;

void
priv_cred_setgroups(int asroot, int injail, struct test *test)
{
 int error;

 error = setgroups(gidset_len, gidset);
 if (asroot && injail)
  expect("priv_setgroups(asroot, injail)", error, 0, 0);
 if (asroot && !injail)
  expect("priv_setgroups(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_setgroups(!asroot, injail)", error, -1, EPERM);
 if (!asroot && !injail)
  expect("priv_setgroups(!asroot, !injail)", error, -1, EPERM);
}
