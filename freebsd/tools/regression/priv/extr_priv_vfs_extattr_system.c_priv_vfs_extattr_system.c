
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int EA_DATA ;
 int EA_NAME ;
 int EA_NAMESPACE ;
 scalar_t__ EA_SIZE ;
 int EPERM ;
 int err (int,char*,scalar_t__) ;
 int expect (char*,int,int,int ) ;
 scalar_t__ extattr_set_file (int ,int ,int ,int ,scalar_t__) ;
 int fpath ;

void
priv_vfs_extattr_system(int asroot, int injail, struct test *test)
{
 ssize_t ret;
 int error;

 ret = extattr_set_file(fpath, EA_NAMESPACE, EA_NAME, EA_DATA,
     EA_SIZE);
 if (ret < 0)
  error = -1;
 else if (ret == EA_SIZE)
  error = 0;
 else
  err(-1, "priv_vfs_extattr_system: set returned %zd", ret);
 if (asroot && injail)
  expect("priv_vfs_extattr_system(asroot, injail)", error, -1,
      EPERM);
 if (asroot && !injail)
  expect("priv_vfs_extattr_system(asroot, !injail)", error, 0,
      0);
 if (!asroot && injail)
  expect("priv_vfs_extattr_system(!asroot, injail)", error, -1,
      EPERM);
 if (!asroot && !injail)
  expect("priv_vfs_extattr_system(!asroot, !injail)", error,
      -1, EPERM);
}
