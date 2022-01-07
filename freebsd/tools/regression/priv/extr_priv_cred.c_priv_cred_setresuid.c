
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EPERM ;
 int UID_OTHER ;
 int expect (char*,int,int,int ) ;
 int setresuid (int ,int ,int ) ;

void
priv_cred_setresuid(int asroot, int injail, struct test *test)
{
 int error;

 error = setresuid(UID_OTHER, UID_OTHER, UID_OTHER);
 if (asroot && injail)
  expect("priv_setresuid(asroot, injail)", error, 0, 0);
 if (asroot && !injail)
  expect("priv_setresuid(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_setresuid(!asroot, injail)", error, -1, EPERM);
 if (!asroot && !injail)
  expect("priv_setresuid(!asroot, !injail)", error, -1, EPERM);
}
