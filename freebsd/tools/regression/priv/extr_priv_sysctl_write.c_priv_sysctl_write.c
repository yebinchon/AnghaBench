
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EPERM ;
 int KERN_DOMAINNAME_STRING ;
 int expect (char*,int,int,int ) ;
 int stored_domainname ;
 int strlen (int ) ;
 int sysctlbyname (int ,int *,int *,int ,int ) ;

void
priv_sysctl_write(int asroot, int injail, struct test *test)
{
 int error;

 error = sysctlbyname(KERN_DOMAINNAME_STRING, ((void*)0), ((void*)0),
     stored_domainname, strlen(stored_domainname));
 if (asroot && injail)
  expect("priv_sysctl_write(asroot, injail)", error, -1,
      EPERM);
 if (asroot && !injail)
  expect("priv_sysctl_write(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_sysctl_write(!asroot, injail)", error, -1,
      EPERM);
 if (!asroot && !injail)
  expect("priv_sysctl_write(!asroot, !injail)", error, -1,
      EPERM);
}
