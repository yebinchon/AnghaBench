
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int DEV_IO ;
 scalar_t__ chmod (int ,int ) ;
 int err (int,char*,int ,int ) ;
 scalar_t__ initialized ;
 int saved_perms ;

void
priv_io_cleanup(int asroot, int asjail, struct test *test)
{

 if (!initialized)
  return;
 if (chmod(DEV_IO, saved_perms) < 0)
  err(-1, "priv_io_cleanup: chmod(%s, 0%o)", DEV_IO,
      saved_perms);
 initialized = 0;
}
