
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EPERM ;
 int UID_OTHER ;
 int expect (char*,int,int,int ) ;
 int seteuid (int ) ;

void
priv_cred_seteuid(int asroot, int injail, struct test *test)
{
 int error;

 error = seteuid(UID_OTHER);
 if (asroot && injail)
  expect("priv_seteuid(asroot, injail)", error, 0, 0);
 if (asroot && !injail)
  expect("priv_seteuid(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_seteuid(!asroot, injail)", error, -1, EPERM);
 if (!asroot && !injail)
  expect("priv_seteuid(!asroot, !injail)", error, -1, EPERM);
}
