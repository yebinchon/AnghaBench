
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct test {int dummy; } ;


 int EPERM ;
 int UF_NODUMP ;
 int chflags (int ,int ) ;
 int expect (char*,int,int,int ) ;
 int fpath ;
 int getflags (int ) ;

void
priv_vfs_chflags_froot_uflags(int asroot, int injail,
    struct test *test)
{
 u_long flags;
 int error;

 flags = getflags(fpath);
 flags |= UF_NODUMP;
 error = chflags(fpath, flags);
 if (asroot && injail)
  expect("priv_vfs_chflags_froot_uflags(asroot, injail)",
      error, 0, 0);
 if (asroot && !injail)
  expect("priv_vfs_chflags_froot_uflags(asroot, !injail)",
      error, 0, 0);
 if (!asroot && injail)
  expect("priv_vfs_chflags_froot_uflags(!asroot, injail)",
      error, -1, EPERM);
 if (!asroot && !injail)
  expect("priv_vfs_chflags_froot_uflags(!asroot, !injail)",
      error, -1, EPERM);
}
