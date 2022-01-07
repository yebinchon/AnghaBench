
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int mode_t ;
typedef int gid_t ;


 scalar_t__ chmod (char*,int ) ;
 scalar_t__ chown (char*,int ,int ) ;
 int err (int,char*,char const*,...) ;
 int * mkdtemp (char*) ;
 int strcpy (char*,char*) ;

void
setup_dir(const char *test, char *dpathp, uid_t uid, gid_t gid, mode_t mode)
{

 strcpy(dpathp, "/tmp/priv.XXXXXXXXXXX");
 if (mkdtemp(dpathp) == ((void*)0))
  err(-1, "test %s: mkdtemp", test);

 if (chown(dpathp, uid, gid) < 0)
  err(-1, "test %s: chown(%s, %d, %d)", test, dpathp, uid,
      gid);

 if (chmod(dpathp, mode) < 0)
  err(-1, "test %s: chmod(%s, 0%o)", test, dpathp, mode);
}
