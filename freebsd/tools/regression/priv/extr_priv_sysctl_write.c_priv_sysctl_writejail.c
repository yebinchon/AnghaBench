
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EPERM ;
 int KERN_HOSTNAME_STRING ;
 int expect (char*,int,int,int ) ;
 int stored_hostname ;
 int strlen (int ) ;
 int sysctlbyname (int ,int *,int *,int ,int ) ;

void
priv_sysctl_writejail(int asroot, int injail, struct test *test)
{
 int error;

 error = sysctlbyname(KERN_HOSTNAME_STRING, ((void*)0), ((void*)0),
     stored_hostname, strlen(stored_hostname));
 if (asroot && injail)
  expect("priv_sysctl_writejail(asroot, injail)", error, 0, 0);
 if (asroot && !injail)
  expect("priv_sysctl_writejail(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_sysctl_writejail(!asroot, injail)", error, -1,
      EPERM);
 if (!asroot && !injail)
  expect("priv_sysctl_writejail(!asroot, !injail)", error, -1,
      EPERM);
}
