
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_name; } ;
struct group {char* gr_name; } ;
typedef int id_t ;


 int asprintf (char**,char*,char const*,char const*,char const*) ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 struct group* getgrgid (int ) ;
 struct passwd* getpwuid (int ) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 size_t strlen (char const*) ;
 char* strsep (char**,char*) ;
 int strtod (char const*,char**) ;

__attribute__((used)) static char *
humanize_ids(char *rule)
{
 id_t id;
 struct passwd *pwd;
 struct group *grp;
 const char *subject, *textid, *rest;
 char *end, *humanized;
 int ret;

 subject = strsep(&rule, ":");
 textid = strsep(&rule, ":");
 if (textid == ((void*)0))
  errx(1, "rule passed from the kernel didn't contain subject");
 if (rule != ((void*)0))
  rest = rule;
 else
  rest = "";


 if (strcasecmp(subject, "user") == 0) {
  id = strtod(textid, &end);
  if ((size_t)(end - textid) != strlen(textid))
   errx(1, "malformed uid '%s'", textid);
  pwd = getpwuid(id);
  if (pwd != ((void*)0))
   textid = pwd->pw_name;
 } else if (strcasecmp(subject, "group") == 0) {
  id = strtod(textid, &end);
  if ((size_t)(end - textid) != strlen(textid))
   errx(1, "malformed gid '%s'", textid);
  grp = getgrgid(id);
  if (grp != ((void*)0))
   textid = grp->gr_name;
 }

 ret = asprintf(&humanized, "%s:%s:%s", subject, textid, rest);
 if (ret <= 0)
  err(1, "asprintf");

 return (humanized);
}
