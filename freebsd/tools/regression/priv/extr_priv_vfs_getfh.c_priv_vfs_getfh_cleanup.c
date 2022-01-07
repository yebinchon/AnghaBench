
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int fpath ;
 int unlink (int ) ;

void
priv_vfs_getfh_cleanup(int asroot, int injail, struct test *test)
{

 (void)unlink(fpath);
}
