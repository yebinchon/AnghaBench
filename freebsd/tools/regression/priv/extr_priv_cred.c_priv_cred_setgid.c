
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EPERM ;
 int GID_OTHER ;
 int expect (char*,int,int,int ) ;
 int setgid (int ) ;

void
priv_cred_setgid(int asroot, int injail, struct test *test)
{
 int error;

 error = setgid(GID_OTHER);
 if (asroot && injail)
  expect("priv_setgid(asroot, injail)", error, 0, 0);
 if (asroot && !injail)
  expect("priv_setgid(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_setgid(!asroot, injail)", error, -1, EPERM);
 if (!asroot && !injail)
  expect("priv_setgid(!asroot, !injail)", error, -1, EPERM);
}
