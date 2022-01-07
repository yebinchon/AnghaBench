
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct group {int dummy; } ;


 int EX_NOUSER ;
 struct group* GETGRGID (int ) ;
 struct group* GETGRNAM (char*) ;
 int GID_MAX ;
 int errx (int ,char*,char*) ;
 int strtounum (char*,int ,int ,char const**) ;

__attribute__((used)) static struct group *
group_from_name_or_id(char *name)
{
 const char *errstr = ((void*)0);
 struct group *grp;
 uintmax_t id;

 if ((grp = GETGRNAM(name)) == ((void*)0)) {
  id = strtounum(name, 0, GID_MAX, &errstr);
  if (errstr)
   errx(EX_NOUSER, "group `%s' does not exist", name);
  grp = GETGRGID(id);
  if (grp == ((void*)0))
   errx(EX_NOUSER, "group `%s' does not exist", name);
 }

 return (grp);
}
