
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef scalar_t__ gid_t ;


 scalar_t__ EPERM ;
 int _SC_NGROUPS_MAX ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int free (scalar_t__*) ;
 scalar_t__ geteuid () ;
 int getgroups (long,scalar_t__*) ;
 scalar_t__ gid ;
 int gname ;
 scalar_t__* malloc (int) ;
 int sysconf (int ) ;
 scalar_t__ uid ;
 int warn (char*,char const*) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
chownerr(const char *file)
{
 static uid_t euid = -1;
 static int ngroups = -1;
 static long ngroups_max;
 gid_t *groups;


 if (errno != EPERM || (uid != (uid_t)-1 &&
     euid == (uid_t)-1 && (euid = geteuid()) != 0)) {
  warn("%s", file);
  return;
 }


 if (gid != (gid_t)-1 && ngroups == -1 &&
     euid == (uid_t)-1 && (euid = geteuid()) != 0) {
  ngroups_max = sysconf(_SC_NGROUPS_MAX) + 1;
  if ((groups = malloc(sizeof(gid_t) * ngroups_max)) == ((void*)0))
   err(1, "malloc");
  ngroups = getgroups(ngroups_max, groups);
  while (--ngroups >= 0 && gid != groups[ngroups]);
  free(groups);
  if (ngroups < 0) {
   warnx("you are not a member of group %s", gname);
   return;
  }
 }
 warn("%s", file);
}
