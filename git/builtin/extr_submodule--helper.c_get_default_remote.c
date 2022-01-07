
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die (int ,char const*) ;
 scalar_t__ git_config_get_string (int ,char**) ;
 char* resolve_ref_unsafe (char*,int ,int *,int *) ;
 int skip_prefix (char const*,char*,char const**) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char const*,char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *get_default_remote(void)
{
 char *dest = ((void*)0), *ret;
 struct strbuf sb = STRBUF_INIT;
 const char *refname = resolve_ref_unsafe("HEAD", 0, ((void*)0), ((void*)0));

 if (!refname)
  die(_("No such ref: %s"), "HEAD");


 if (!strcmp(refname, "HEAD"))
  return xstrdup("origin");

 if (!skip_prefix(refname, "refs/heads/", &refname))
  die(_("Expecting a full ref name, got %s"), refname);

 strbuf_addf(&sb, "branch.%s.remote", refname);
 if (git_config_get_string(sb.buf, &dest))
  ret = xstrdup("origin");
 else
  ret = dest;

 strbuf_release(&sb);
 return ret;
}
