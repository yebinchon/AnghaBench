
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int found_match ;
 scalar_t__ heads_only ;
 scalar_t__ memcmp (char const*,char const*,int) ;
 char** pattern ;
 scalar_t__ show_head ;
 int show_one (char const*,struct object_id const*) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;
 scalar_t__ tags_only ;

__attribute__((used)) static int show_ref(const char *refname, const struct object_id *oid,
      int flag, void *cbdata)
{
 if (show_head && !strcmp(refname, "HEAD"))
  goto match;

 if (tags_only || heads_only) {
  int match;

  match = heads_only && starts_with(refname, "refs/heads/");
  match |= tags_only && starts_with(refname, "refs/tags/");
  if (!match)
   return 0;
 }
 if (pattern) {
  int reflen = strlen(refname);
  const char **p = pattern, *m;
  while ((m = *p++) != ((void*)0)) {
   int len = strlen(m);
   if (len > reflen)
    continue;
   if (memcmp(m, refname + reflen - len, len))
    continue;
   if (len == reflen)
    goto match;
   if (refname[reflen - len - 1] == '/')
    goto match;
  }
  return 0;
 }

match:
 found_match++;

 show_one(refname, oid);

 return 0;
}
