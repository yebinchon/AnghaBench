
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int BUG (char*,char const*,char const*) ;
 struct strbuf STRBUF_INIT ;
 char* get_super_prefix () ;
 char const* relative_path (char const*,char const*,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 char* xstrdup (char const*) ;
 char* xstrfmt (char*,char const*,char const*) ;

__attribute__((used)) static char *get_submodule_displaypath(const char *path, const char *prefix)
{
 const char *super_prefix = get_super_prefix();

 if (prefix && super_prefix) {
  BUG("cannot have prefix '%s' and superprefix '%s'",
      prefix, super_prefix);
 } else if (prefix) {
  struct strbuf sb = STRBUF_INIT;
  char *displaypath = xstrdup(relative_path(path, prefix, &sb));
  strbuf_release(&sb);
  return displaypath;
 } else if (super_prefix) {
  return xstrfmt("%s%s", super_prefix, path);
 } else {
  return xstrdup(path);
 }
}
