
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int expect (char*,int,int ,int ) ;
 int fpath ;
 int utimes (int ,int *) ;

void
priv_vfs_utimes_fother_null(int asroot, int injail, struct test *test)
{
 int error;

 error = utimes(fpath, ((void*)0));
 if (asroot && injail)
  expect("priv_vfs_utimes_fother_null(root, jail)", error, 0,
      0);
 if (asroot && !injail)
  expect("priv_vfs_utimes_fother_null(root, !jail)", error, 0,
      0);
 if (!asroot && injail)
  expect("priv_vfs_utimes_fother_null(!root, jail)", error, 0,
      0);
 if (!asroot && !injail)
  expect("priv_vfs_utimes_fother_null(!root, !jail)", error, 0,
      0);
}
