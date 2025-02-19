
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;
struct stat {int st_mode; } ;


 int ALLPERMS ;
 int DEV_IO ;
 int EXPECTED_PERMS ;
 int NEW_PERMS ;
 scalar_t__ chmod (int ,int ) ;
 int initialized ;
 int saved_perms ;
 scalar_t__ stat (int ,struct stat*) ;
 int warn (char*,int ,...) ;
 int warnx (char*,int,int) ;

int
priv_io_setup(int asroot, int asjail, struct test *test)
{
 struct stat sb;

 if (stat(DEV_IO, &sb) < 0) {
  warn("priv_io_setup: stat(%s)", DEV_IO);
  return (-1);
 }
 saved_perms = sb.st_mode & ALLPERMS;
 if (saved_perms != EXPECTED_PERMS) {
  warnx("priv_io_setup: perms = 0%o; expected 0%o",
      saved_perms, EXPECTED_PERMS);
  return (-1);
 }
 if (chmod(DEV_IO, NEW_PERMS) < 0) {
  warn("priv_io_setup: chmod(%s, 0%o)", DEV_IO, NEW_PERMS);
  return (-1);
 }
 initialized = 1;
 return (0);
}
