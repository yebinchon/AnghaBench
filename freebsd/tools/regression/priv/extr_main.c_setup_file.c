
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int mode_t ;
typedef int gid_t ;


 int close (int) ;
 int err (int,char*,char const*,...) ;
 scalar_t__ fchmod (int,int ) ;
 scalar_t__ fchown (int,int ,int ) ;
 int mkstemp (char*) ;
 int strcpy (char*,char*) ;

void
setup_file(const char *test, char *fpathp, uid_t uid, gid_t gid, mode_t mode)
{
 int fd;

 strcpy(fpathp, "/tmp/priv.XXXXXXXXXXX");
 fd = mkstemp(fpathp);
 if (fd < 0)
  err(-1, "test %s: mkstemp", test);

 if (fchown(fd, uid, gid) < 0)
  err(-1, "test %s: fchown(%s, %d, %d)", test, fpathp, uid,
      gid);

 if (fchmod(fd, mode) < 0)
  err(-1, "test %s: chmod(%s, 0%o)", test, fpathp, mode);

 close(fd);
}
