
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_uid; } ;
struct group {int gr_gid; } ;




 scalar_t__ alldigits (char const*) ;
 int atoi (char const*) ;
 struct group* getgrnam (char const*) ;
 struct passwd* getpwnam (char const*) ;
 int sleep (int) ;
 int warnx (char*,...) ;

int
getentry(const char *name, int quotatype)
{
 struct passwd *pw;
 struct group *gr;

 if (alldigits(name))
  return (atoi(name));
 switch(quotatype) {
 case 128:
  if ((pw = getpwnam(name)))
   return (pw->pw_uid);
  warnx("%s: no such user", name);
  sleep(3);
  break;
 case 129:
  if ((gr = getgrnam(name)))
   return (gr->gr_gid);
  warnx("%s: no such group", name);
  sleep(3);
  break;
 default:
  warnx("%d: unknown quota type", quotatype);
  sleep(3);
  break;
 }
 sleep(1);
 return (-1);
}
