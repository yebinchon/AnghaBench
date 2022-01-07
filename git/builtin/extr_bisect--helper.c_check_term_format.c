
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int check_refname_format (char*,int ) ;
 int error (int ,char const*) ;
 int free (char*) ;
 scalar_t__ one_of (char const*,char*,char*,char*,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* xstrfmt (char*,char const*) ;

__attribute__((used)) static int check_term_format(const char *term, const char *orig_term)
{
 int res;
 char *new_term = xstrfmt("refs/bisect/%s", term);

 res = check_refname_format(new_term, 0);
 free(new_term);

 if (res)
  return error(_("'%s' is not a valid term"), term);

 if (one_of(term, "help", "start", "skip", "next", "reset",
   "visualize", "view", "replay", "log", "run", "terms", ((void*)0)))
  return error(_("can't use the builtin command '%s' as a term"), term);







 if ((strcmp(orig_term, "bad") && one_of(term, "bad", "new", ((void*)0))) ||
   (strcmp(orig_term, "good") && one_of(term, "good", "old", ((void*)0))))
  return error(_("can't change the meaning of the term '%s'"), term);

 return 0;
}
