
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;
typedef scalar_t__ intmax_t ;


 int EX_DATAERR ;
 struct group* GETGRGID (scalar_t__) ;
 struct group* GETGRNAM (char*) ;
 int errx (int ,char*,...) ;

__attribute__((used)) static struct group *
getgroup(char *name, intmax_t id, bool fatal)
{
 struct group *grp;

 if (id < 0 && name == ((void*)0))
  errx(EX_DATAERR, "groupname or id required");
 grp = (name != ((void*)0)) ? GETGRNAM(name) : GETGRGID(id);
 if (grp == ((void*)0)) {
  if (!fatal)
   return (((void*)0));
  if (name == ((void*)0))
   errx(EX_DATAERR, "unknown gid `%ju'", id);
  errx(EX_DATAERR, "unknown group `%s'", name);
 }
 return (grp);
}
