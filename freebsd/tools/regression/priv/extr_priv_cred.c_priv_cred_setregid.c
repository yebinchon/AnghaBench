
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EPERM ;
 int GID_OTHER ;
 int expect (char*,int,int,int ) ;
 int setregid (int ,int ) ;

void
priv_cred_setregid(int asroot, int injail, struct test *test)
{
 int error;

 error = setregid(GID_OTHER, GID_OTHER);
 if (asroot && injail)
  expect("priv_setregid(asroot, injail)", error, 0, 0);
 if (asroot && !injail)
  expect("priv_setregid(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_setregid(!asroot, injail)", error, -1, EPERM);
 if (!asroot && !injail)
  expect("priv_setregid(!asroot, !injail)", error, -1, EPERM);
}
