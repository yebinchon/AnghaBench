
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EA_DATA ;
 int EA_NAME ;
 int EA_NAMESPACE ;
 int EA_SIZE ;
 int confirm_sugid (char*,int,int) ;
 int err (int,char*,char*,char*) ;
 scalar_t__ extattr_set_file (int ,int ,int ,int ,int ) ;
 int fpath ;

void
priv_vfs_clearsugid_extattr(int asroot, int injail, struct test *test)
{

 if (extattr_set_file(fpath, EA_NAMESPACE, EA_NAME, EA_DATA, EA_SIZE)
     < 0)
  err(-1,
      "priv_vfs_clearsugid_extattr(%s, %s): extattr_set_file",
      asroot ? "root" : "!root", injail ? "jail" : "!jail");
 confirm_sugid("priv_vfs_clearsugid_extattr", asroot, injail);
}
