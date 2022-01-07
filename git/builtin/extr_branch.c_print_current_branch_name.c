
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REF_ISSYMREF ;
 int _ (char*) ;
 int die (int ,...) ;
 int puts (char const*) ;
 char* resolve_ref_unsafe (char*,int ,int *,int*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;

__attribute__((used)) static void print_current_branch_name(void)
{
 int flags;
 const char *refname = resolve_ref_unsafe("HEAD", 0, ((void*)0), &flags);
 const char *shortname;
 if (!refname)
  die(_("could not resolve HEAD"));
 else if (!(flags & REF_ISSYMREF))
  return;
 else if (skip_prefix(refname, "refs/heads/", &shortname))
  puts(shortname);
 else
  die(_("HEAD (%s) points outside of refs/heads/"), refname);
}
