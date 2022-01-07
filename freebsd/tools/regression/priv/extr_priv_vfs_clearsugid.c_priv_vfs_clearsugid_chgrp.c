
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int GID_OWNER ;
 int GID_WHEEL ;
 scalar_t__ chown (int ,int,int ) ;
 int confirm_sugid (char*,int,int) ;
 int err (int,char*,char*,char*) ;
 int fpath ;

void
priv_vfs_clearsugid_chgrp(int asroot, int injail, struct test *test)
{

 if (chown(fpath, -1, asroot ? GID_WHEEL : GID_OWNER) < 0)
  err(-1, "priv_vfs_clearsugid_chgrp(%s, %s): chrgrp",
      asroot ? "root" : "!root", injail ? "jail" : "!jail");
 confirm_sugid("priv_vfs_clearsugid_chgrp", asroot, injail);
}
