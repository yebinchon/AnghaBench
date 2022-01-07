
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;
struct stat {scalar_t__ st_gen; } ;


 int GID_WHEEL ;
 int MAX_TRIES ;
 int UID_ROOT ;
 int fpath ;
 int fpath_initialized ;
 int setup_file (char*,int ,int ,int ,int) ;
 scalar_t__ stat (int ,struct stat*) ;
 int unlink (int ) ;
 int warn (char*,int ) ;
 int warnx (char*) ;

int
priv_vfs_generation_setup(int asroot, int injail, struct test *test)
{
 struct stat sb;
 int i;







 for (i = 0; i < MAX_TRIES; i++) {
  setup_file("priv_vfs_generation_setup: fpath", fpath,
      UID_ROOT, GID_WHEEL, 0644);
  if (stat(fpath, &sb) < 0) {
   warn("priv_vfs_generation_setup: fstat(%s)", fpath);
   (void)unlink(fpath);
   return (-1);
  }
  if (sb.st_gen != 0) {
   fpath_initialized = 1;
   return (0);
  }
 }
 warnx("priv_vfs_generation_setup: unable to create gen file");
 return (-1);
}
