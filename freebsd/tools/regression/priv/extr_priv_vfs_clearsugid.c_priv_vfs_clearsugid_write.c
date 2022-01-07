
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EA_DATA ;
 int EA_SIZE ;
 int O_RDWR ;
 int close (int) ;
 int confirm_sugid (char*,int,int) ;
 int err (int,char*,char*,char*) ;
 int fpath ;
 int open (int ,int ) ;
 scalar_t__ write (int,int ,int ) ;

void
priv_vfs_clearsugid_write(int asroot, int injail, struct test *test)
{
 int fd;

 fd = open(fpath, O_RDWR);
 if (fd < 0)
  err(-1, "priv_vfs_clearsugid_write(%s, %s): open",
      asroot ? "root" : "!root", injail ? "jail" : "!jail");
 if (write(fd, EA_DATA, EA_SIZE) < 0)
  err(-1, "priv_vfs_clearsugid_write(%s, %s): write",
      asroot ? "root" : "!root", injail ? "jail" : "!jail");
 (void)close(fd);
 confirm_sugid("priv_vfs_clearsugid_write", asroot, injail);
}
