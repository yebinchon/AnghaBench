
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int gr_gid; } ;
typedef int id_t ;


 struct group* getgrnam (char const*) ;
 int isnumber (char const) ;
 size_t strlen (char const*) ;
 int strtod (char const*,char**) ;
 int warnx (char*,char const*,...) ;

__attribute__((used)) static int
parse_group(const char *s, id_t *gidp, const char *unexpanded_rule)
{
 char *end;
 struct group *grp;

 grp = getgrnam(s);
 if (grp != ((void*)0)) {
  *gidp = grp->gr_gid;
  return (0);
 }

 if (!isnumber(s[0])) {
  warnx("malformed rule '%s': unknown group '%s'",
      unexpanded_rule, s);
  return (1);
 }

 *gidp = strtod(s, &end);
 if ((size_t)(end - s) != strlen(s)) {
  warnx("malformed rule '%s': trailing characters "
      "after numerical id", unexpanded_rule);
  return (1);
 }

 return (0);
}
