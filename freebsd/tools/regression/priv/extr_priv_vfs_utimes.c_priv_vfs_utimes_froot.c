
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct test {int dummy; } ;


 int EPERM ;
 int expect (char*,int,int,int ) ;
 int fpath ;
 int utimes (int ,struct timeval*) ;

void
priv_vfs_utimes_froot(int asroot, int injail, struct test *test)
{
 struct timeval tv[2];
 int error;

 tv[0].tv_sec = 0;
 tv[0].tv_usec = 0;
 tv[1].tv_sec = 0;
 tv[1].tv_usec = 0;
 error = utimes(fpath, tv);
 if (asroot && injail)
  expect("priv_vfs_utimes_froot(root, jail)", error, 0, 0);
 if (asroot && !injail)
  expect("priv_vfs_utimes_froot(root, !jail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_vfs_utimes_froot(!root, jail)", error, -1,
      EPERM);
 if (!asroot && !injail)
  expect("priv_vfs_utimes_froot(!root, !jail)", error, -1,
      EPERM);
}
