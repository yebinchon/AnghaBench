
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_uid; } ;
typedef int id_t ;


 struct passwd* getpwnam (char const*) ;
 int isnumber (char const) ;
 size_t strlen (char const*) ;
 int strtod (char const*,char**) ;
 int warnx (char*,char const*,...) ;

__attribute__((used)) static int
parse_user(const char *s, id_t *uidp, const char *unexpanded_rule)
{
 char *end;
 struct passwd *pwd;

 pwd = getpwnam(s);
 if (pwd != ((void*)0)) {
  *uidp = pwd->pw_uid;
  return (0);
 }

 if (!isnumber(s[0])) {
  warnx("malformed rule '%s': unknown user '%s'",
      unexpanded_rule, s);
  return (1);
 }

 *uidp = strtod(s, &end);
 if ((size_t)(end - s) != strlen(s)) {
  warnx("malformed rule '%s': trailing characters "
      "after numerical id", unexpanded_rule);
  return (1);
 }

 return (0);
}
